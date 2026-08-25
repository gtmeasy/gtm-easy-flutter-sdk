#!/usr/bin/env bash
# Regenerate lib/src/generated from openapi/growth.openapi.json.
# Regenerated dart-dio output is copied into lib/src/generated/ and then
# dart-fix/format are applied. Unused-import cleanup may be done by hand
# after generate; those edits are allowed for analyzer/pana cleanliness.

set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

GEN="${OPENAPI_GENERATOR_CLI:-/Volumes/SandE/temp/202604/gmt-easy-stable/apps/web/node_modules/.bin/openapi-generator-cli}"
if [[ ! -x "$GEN" ]]; then
  GEN="$(command -v openapi-generator-cli || true)"
fi
if [[ -z "$GEN" ]]; then
  echo "openapi-generator-cli not found. Set OPENAPI_GENERATOR_CLI." >&2
  exit 1
fi

/bin/rm -rf _gen
"$GEN" generate -i openapi/growth.openapi.json -g dart-dio -o _gen \
  --additional-properties=pubName=gtmeasy_growth_api,pubAuthor=RockieStar,pubVersion=0.1.0,nullSafe=true,nullSafe-array-default=true

/bin/rm -rf lib/src/generated
mkdir -p lib/src/generated
cp -R _gen/lib/src/. lib/src/generated/
cp _gen/lib/gtmeasy_growth_api.dart lib/src/generated/gtmeasy_growth_api.dart

find lib/src/generated -name '*.dart' -print0 | xargs -0 sed -i '' \
  -e 's|package:gtmeasy_growth_api/src/|package:gtmeasy_growth/src/generated/|g' \
  -e 's|package:gtmeasy_growth_api/gtmeasy_growth_api.dart|package:gtmeasy_growth/src/generated/gtmeasy_growth_api.dart|g'

mkdir -p .openapi-generator
cp _gen/.openapi-generator/VERSION .openapi-generator/VERSION
cp _gen/.openapi-generator-ignore .openapi-generator-ignore

dart run build_runner build --delete-conflicting-outputs
# dart fix does not rewrite this tree while analysis_options excludes it.
# OpenAPI dart-dio leaves unused json_object / ErrorResponse imports on *Api classes.
dart fix --apply lib/src/generated || true
find lib/src/generated/api -name '*.dart' -print0 | xargs -0 sed -i '' \
  -e '/^import '\''package:built_value\/json_object.dart'\'';$/d' \
  -e '/^import '\''package:gtmeasy_growth\/src\/generated\/model\/error_response.dart'\'';$/d'
dart format lib/src/generated
/bin/rm -rf _gen
echo "Generated client written to lib/src/generated/"
