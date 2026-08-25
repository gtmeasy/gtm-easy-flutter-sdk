import 'prefs_storage.dart';
import 'storage.dart';

Future<GrowthStorage> openDefaultStorage(String app) =>
    PrefsGrowthStorage.open(app);
