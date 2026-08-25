//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'track_event_request.g.dart';

/// TrackEventRequest
///
/// Properties:
/// * [app]
/// * [environment]
/// * [platform] - Originating platform.
/// * [userId]
/// * [anonymousId]
/// * [deviceId]
/// * [eventId] - Client-generated idempotency key. Reuse the same UUID and original occurredAt when retrying the same event.
/// * [eventName]
/// * [appVersion]
/// * [buildNumber]
/// * [source_]
/// * [country] - ISO-3166 alpha-2; server fills from Cloudflare if absent.
/// * [locale]
/// * [timezone]
/// * [attributionProvider]
/// * [attributionId]
/// * [occurredAt]
/// * [properties] - Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
/// * [metricValue]
/// * [metricLabel]
@BuiltValue()
abstract class TrackEventRequest
    implements Built<TrackEventRequest, TrackEventRequestBuilder> {
  @BuiltValueField(wireName: r'app')
  String get app;

  @BuiltValueField(wireName: r'environment')
  TrackEventRequestEnvironmentEnum? get environment;
  // enum environmentEnum {  production,  staging,  development,  };

  /// Originating platform.
  @BuiltValueField(wireName: r'platform')
  TrackEventRequestPlatformEnum? get platform;
  // enum platformEnum {  ios,  android,  web,  macos,  windows,  linux,  server,  };

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'anonymousId')
  String? get anonymousId;

  @BuiltValueField(wireName: r'deviceId')
  String? get deviceId;

  /// Client-generated idempotency key. Reuse the same UUID and original occurredAt when retrying the same event.
  @BuiltValueField(wireName: r'eventId')
  String? get eventId;

  @BuiltValueField(wireName: r'eventName')
  TrackEventRequestEventNameEnum get eventName;
  // enum eventNameEnum {  app.first_open,  app.opened,  app.updated,  user.created,  session.started,  session.ended,  acquisition.attribution_resolved,  acquisition.app_download,  acquisition.user_registered,  app_store.product_page_viewed,  app_store.install_attributed,  onboarding.started,  onboarding.completed,  onboarding.step_viewed,  onboarding.step_completed,  onboarding.step_skipped,  onboarding.goal_selected,  onboarding.permission_prompted,  onboarding.permission_granted,  onboarding.permission_denied,  survey.shown,  survey.started,  survey.completed,  survey.dismissed,  activation.completed,  feature.used,  feature.first_used,  page.viewed,  button.clicked,  goal.completed,  paywall.opened,  paywall.closed,  paywall.upgrade_clicked,  paywall.upgrade_cancelled,  paywall.products_requested,  paywall.products_loaded,  paywall.products_failed,  paywall.offer_eligible,  paywall.plan_selected,  paywall.restore_clicked,  paywall.restore_completed,  paywall.restore_failed,  purchase.started,  purchase.completed,  purchase.failed,  purchase.refunded,  trial.eligible,  trial.ineligible,  trial.started,  trial.converted,  trial.cancelled,  trial.expired,  trial.billing_retry_started,  subscription.started,  subscription.renewed,  subscription.cancelled,  subscription.expired,  subscription.billing_issue,  subscription.grace_period_started,  subscription.recovered,  subscription.refunded,  subscription.price_increase_accepted,  subscription.price_increase_declined,  revenue.received,  referral.sent,  referral.accepted,  review.prompted,  review.submitted,  notification.received,  notification.opened,  error.occurred,  };

  @BuiltValueField(wireName: r'appVersion')
  String? get appVersion;

  @BuiltValueField(wireName: r'buildNumber')
  String? get buildNumber;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  /// ISO-3166 alpha-2; server fills from Cloudflare if absent.
  @BuiltValueField(wireName: r'country')
  String? get country;

  @BuiltValueField(wireName: r'locale')
  String? get locale;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  @BuiltValueField(wireName: r'attributionProvider')
  String? get attributionProvider;

  @BuiltValueField(wireName: r'attributionId')
  String? get attributionId;

  @BuiltValueField(wireName: r'occurredAt')
  DateTime? get occurredAt;

  /// Free-form structured properties. Reserved keys: `_ctx` for SDK common context.
  @BuiltValueField(wireName: r'properties')
  BuiltMap<String, JsonObject?>? get properties;

  @BuiltValueField(wireName: r'metricValue')
  num? get metricValue;

  @BuiltValueField(wireName: r'metricLabel')
  String? get metricLabel;

  TrackEventRequest._();

  factory TrackEventRequest([void updates(TrackEventRequestBuilder b)]) =
      _$TrackEventRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrackEventRequestBuilder b) => b
    ..environment = TrackEventRequestEnvironmentEnum.valueOf('production')
    ..platform = TrackEventRequestPlatformEnum.valueOf('ios')
    ..source_ = 'native';

  @BuiltValueSerializer(custom: true)
  static Serializer<TrackEventRequest> get serializer =>
      _$TrackEventRequestSerializer();
}

class _$TrackEventRequestSerializer
    implements PrimitiveSerializer<TrackEventRequest> {
  @override
  final Iterable<Type> types = const [TrackEventRequest, _$TrackEventRequest];

  @override
  final String wireName = r'TrackEventRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrackEventRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'app';
    yield serializers.serialize(
      object.app,
      specifiedType: const FullType(String),
    );
    if (object.environment != null) {
      yield r'environment';
      yield serializers.serialize(
        object.environment,
        specifiedType: const FullType(TrackEventRequestEnvironmentEnum),
      );
    }
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(TrackEventRequestPlatformEnum),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.anonymousId != null) {
      yield r'anonymousId';
      yield serializers.serialize(
        object.anonymousId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deviceId != null) {
      yield r'deviceId';
      yield serializers.serialize(
        object.deviceId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.eventId != null) {
      yield r'eventId';
      yield serializers.serialize(
        object.eventId,
        specifiedType: const FullType(String),
      );
    }
    yield r'eventName';
    yield serializers.serialize(
      object.eventName,
      specifiedType: const FullType(TrackEventRequestEventNameEnum),
    );
    if (object.appVersion != null) {
      yield r'appVersion';
      yield serializers.serialize(
        object.appVersion,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.buildNumber != null) {
      yield r'buildNumber';
      yield serializers.serialize(
        object.buildNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.country != null) {
      yield r'country';
      yield serializers.serialize(
        object.country,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attributionProvider != null) {
      yield r'attributionProvider';
      yield serializers.serialize(
        object.attributionProvider,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.attributionId != null) {
      yield r'attributionId';
      yield serializers.serialize(
        object.attributionId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.occurredAt != null) {
      yield r'occurredAt';
      yield serializers.serialize(
        object.occurredAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.properties != null) {
      yield r'properties';
      yield serializers.serialize(
        object.properties,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.metricValue != null) {
      yield r'metricValue';
      yield serializers.serialize(
        object.metricValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.metricLabel != null) {
      yield r'metricLabel';
      yield serializers.serialize(
        object.metricLabel,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrackEventRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrackEventRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'app':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.app = valueDes;
          break;
        case r'environment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(TrackEventRequestEnvironmentEnum),
          ) as TrackEventRequestEnvironmentEnum?;
          if (valueDes == null) continue;
          result.environment = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType.nullable(TrackEventRequestPlatformEnum),
          ) as TrackEventRequestPlatformEnum?;
          if (valueDes == null) continue;
          result.platform = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'anonymousId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.anonymousId = valueDes;
          break;
        case r'deviceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deviceId = valueDes;
          break;
        case r'eventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.eventId = valueDes;
          break;
        case r'eventName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TrackEventRequestEventNameEnum),
          ) as TrackEventRequestEventNameEnum;
          result.eventName = valueDes;
          break;
        case r'appVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.appVersion = valueDes;
          break;
        case r'buildNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buildNumber = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'country':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.country = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.locale = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.timezone = valueDes;
          break;
        case r'attributionProvider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attributionProvider = valueDes;
          break;
        case r'attributionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.attributionId = valueDes;
          break;
        case r'occurredAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.occurredAt = valueDes;
          break;
        case r'properties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>?;
          if (valueDes == null) continue;
          result.properties.replace(valueDes);
          break;
        case r'metricValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.metricValue = valueDes;
          break;
        case r'metricLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metricLabel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrackEventRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrackEventRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class TrackEventRequestEnvironmentEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'production')
  static const TrackEventRequestEnvironmentEnum production =
      _$trackEventRequestEnvironmentEnum_production;
  @BuiltValueEnumConst(wireName: r'staging')
  static const TrackEventRequestEnvironmentEnum staging =
      _$trackEventRequestEnvironmentEnum_staging;
  @BuiltValueEnumConst(wireName: r'development')
  static const TrackEventRequestEnvironmentEnum development =
      _$trackEventRequestEnvironmentEnum_development;

  static Serializer<TrackEventRequestEnvironmentEnum> get serializer =>
      _$trackEventRequestEnvironmentEnumSerializer;

  const TrackEventRequestEnvironmentEnum._(String name) : super(name);

  static BuiltSet<TrackEventRequestEnvironmentEnum> get values =>
      _$trackEventRequestEnvironmentEnumValues;
  static TrackEventRequestEnvironmentEnum valueOf(String name) =>
      _$trackEventRequestEnvironmentEnumValueOf(name);
}

/// Originating platform.
class TrackEventRequestPlatformEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ios')
  static const TrackEventRequestPlatformEnum ios =
      _$trackEventRequestPlatformEnum_ios;
  @BuiltValueEnumConst(wireName: r'android')
  static const TrackEventRequestPlatformEnum android =
      _$trackEventRequestPlatformEnum_android;
  @BuiltValueEnumConst(wireName: r'web')
  static const TrackEventRequestPlatformEnum web =
      _$trackEventRequestPlatformEnum_web;
  @BuiltValueEnumConst(wireName: r'macos')
  static const TrackEventRequestPlatformEnum macos =
      _$trackEventRequestPlatformEnum_macos;
  @BuiltValueEnumConst(wireName: r'windows')
  static const TrackEventRequestPlatformEnum windows =
      _$trackEventRequestPlatformEnum_windows;
  @BuiltValueEnumConst(wireName: r'linux')
  static const TrackEventRequestPlatformEnum linux =
      _$trackEventRequestPlatformEnum_linux;
  @BuiltValueEnumConst(wireName: r'server')
  static const TrackEventRequestPlatformEnum server =
      _$trackEventRequestPlatformEnum_server;

  static Serializer<TrackEventRequestPlatformEnum> get serializer =>
      _$trackEventRequestPlatformEnumSerializer;

  const TrackEventRequestPlatformEnum._(String name) : super(name);

  static BuiltSet<TrackEventRequestPlatformEnum> get values =>
      _$trackEventRequestPlatformEnumValues;
  static TrackEventRequestPlatformEnum valueOf(String name) =>
      _$trackEventRequestPlatformEnumValueOf(name);
}

class TrackEventRequestEventNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'app.first_open')
  static const TrackEventRequestEventNameEnum appPeriodFirstOpen =
      _$trackEventRequestEventNameEnum_appPeriodFirstOpen;
  @BuiltValueEnumConst(wireName: r'app.opened')
  static const TrackEventRequestEventNameEnum appPeriodOpened =
      _$trackEventRequestEventNameEnum_appPeriodOpened;
  @BuiltValueEnumConst(wireName: r'app.updated')
  static const TrackEventRequestEventNameEnum appPeriodUpdated =
      _$trackEventRequestEventNameEnum_appPeriodUpdated;
  @BuiltValueEnumConst(wireName: r'user.created')
  static const TrackEventRequestEventNameEnum userPeriodCreated =
      _$trackEventRequestEventNameEnum_userPeriodCreated;
  @BuiltValueEnumConst(wireName: r'session.started')
  static const TrackEventRequestEventNameEnum sessionPeriodStarted =
      _$trackEventRequestEventNameEnum_sessionPeriodStarted;
  @BuiltValueEnumConst(wireName: r'session.ended')
  static const TrackEventRequestEventNameEnum sessionPeriodEnded =
      _$trackEventRequestEventNameEnum_sessionPeriodEnded;
  @BuiltValueEnumConst(wireName: r'acquisition.attribution_resolved')
  static const TrackEventRequestEventNameEnum
      acquisitionPeriodAttributionResolved =
      _$trackEventRequestEventNameEnum_acquisitionPeriodAttributionResolved;
  @BuiltValueEnumConst(wireName: r'acquisition.app_download')
  static const TrackEventRequestEventNameEnum acquisitionPeriodAppDownload =
      _$trackEventRequestEventNameEnum_acquisitionPeriodAppDownload;
  @BuiltValueEnumConst(wireName: r'acquisition.user_registered')
  static const TrackEventRequestEventNameEnum acquisitionPeriodUserRegistered =
      _$trackEventRequestEventNameEnum_acquisitionPeriodUserRegistered;
  @BuiltValueEnumConst(wireName: r'app_store.product_page_viewed')
  static const TrackEventRequestEventNameEnum appStorePeriodProductPageViewed =
      _$trackEventRequestEventNameEnum_appStorePeriodProductPageViewed;
  @BuiltValueEnumConst(wireName: r'app_store.install_attributed')
  static const TrackEventRequestEventNameEnum appStorePeriodInstallAttributed =
      _$trackEventRequestEventNameEnum_appStorePeriodInstallAttributed;
  @BuiltValueEnumConst(wireName: r'onboarding.started')
  static const TrackEventRequestEventNameEnum onboardingPeriodStarted =
      _$trackEventRequestEventNameEnum_onboardingPeriodStarted;
  @BuiltValueEnumConst(wireName: r'onboarding.completed')
  static const TrackEventRequestEventNameEnum onboardingPeriodCompleted =
      _$trackEventRequestEventNameEnum_onboardingPeriodCompleted;
  @BuiltValueEnumConst(wireName: r'onboarding.step_viewed')
  static const TrackEventRequestEventNameEnum onboardingPeriodStepViewed =
      _$trackEventRequestEventNameEnum_onboardingPeriodStepViewed;
  @BuiltValueEnumConst(wireName: r'onboarding.step_completed')
  static const TrackEventRequestEventNameEnum onboardingPeriodStepCompleted =
      _$trackEventRequestEventNameEnum_onboardingPeriodStepCompleted;
  @BuiltValueEnumConst(wireName: r'onboarding.step_skipped')
  static const TrackEventRequestEventNameEnum onboardingPeriodStepSkipped =
      _$trackEventRequestEventNameEnum_onboardingPeriodStepSkipped;
  @BuiltValueEnumConst(wireName: r'onboarding.goal_selected')
  static const TrackEventRequestEventNameEnum onboardingPeriodGoalSelected =
      _$trackEventRequestEventNameEnum_onboardingPeriodGoalSelected;
  @BuiltValueEnumConst(wireName: r'onboarding.permission_prompted')
  static const TrackEventRequestEventNameEnum
      onboardingPeriodPermissionPrompted =
      _$trackEventRequestEventNameEnum_onboardingPeriodPermissionPrompted;
  @BuiltValueEnumConst(wireName: r'onboarding.permission_granted')
  static const TrackEventRequestEventNameEnum
      onboardingPeriodPermissionGranted =
      _$trackEventRequestEventNameEnum_onboardingPeriodPermissionGranted;
  @BuiltValueEnumConst(wireName: r'onboarding.permission_denied')
  static const TrackEventRequestEventNameEnum onboardingPeriodPermissionDenied =
      _$trackEventRequestEventNameEnum_onboardingPeriodPermissionDenied;
  @BuiltValueEnumConst(wireName: r'survey.shown')
  static const TrackEventRequestEventNameEnum surveyPeriodShown =
      _$trackEventRequestEventNameEnum_surveyPeriodShown;
  @BuiltValueEnumConst(wireName: r'survey.started')
  static const TrackEventRequestEventNameEnum surveyPeriodStarted =
      _$trackEventRequestEventNameEnum_surveyPeriodStarted;
  @BuiltValueEnumConst(wireName: r'survey.completed')
  static const TrackEventRequestEventNameEnum surveyPeriodCompleted =
      _$trackEventRequestEventNameEnum_surveyPeriodCompleted;
  @BuiltValueEnumConst(wireName: r'survey.dismissed')
  static const TrackEventRequestEventNameEnum surveyPeriodDismissed =
      _$trackEventRequestEventNameEnum_surveyPeriodDismissed;
  @BuiltValueEnumConst(wireName: r'activation.completed')
  static const TrackEventRequestEventNameEnum activationPeriodCompleted =
      _$trackEventRequestEventNameEnum_activationPeriodCompleted;
  @BuiltValueEnumConst(wireName: r'feature.used')
  static const TrackEventRequestEventNameEnum featurePeriodUsed =
      _$trackEventRequestEventNameEnum_featurePeriodUsed;
  @BuiltValueEnumConst(wireName: r'feature.first_used')
  static const TrackEventRequestEventNameEnum featurePeriodFirstUsed =
      _$trackEventRequestEventNameEnum_featurePeriodFirstUsed;
  @BuiltValueEnumConst(wireName: r'page.viewed')
  static const TrackEventRequestEventNameEnum pagePeriodViewed =
      _$trackEventRequestEventNameEnum_pagePeriodViewed;
  @BuiltValueEnumConst(wireName: r'button.clicked')
  static const TrackEventRequestEventNameEnum buttonPeriodClicked =
      _$trackEventRequestEventNameEnum_buttonPeriodClicked;
  @BuiltValueEnumConst(wireName: r'goal.completed')
  static const TrackEventRequestEventNameEnum goalPeriodCompleted =
      _$trackEventRequestEventNameEnum_goalPeriodCompleted;
  @BuiltValueEnumConst(wireName: r'paywall.opened')
  static const TrackEventRequestEventNameEnum paywallPeriodOpened =
      _$trackEventRequestEventNameEnum_paywallPeriodOpened;
  @BuiltValueEnumConst(wireName: r'paywall.closed')
  static const TrackEventRequestEventNameEnum paywallPeriodClosed =
      _$trackEventRequestEventNameEnum_paywallPeriodClosed;
  @BuiltValueEnumConst(wireName: r'paywall.upgrade_clicked')
  static const TrackEventRequestEventNameEnum paywallPeriodUpgradeClicked =
      _$trackEventRequestEventNameEnum_paywallPeriodUpgradeClicked;
  @BuiltValueEnumConst(wireName: r'paywall.upgrade_cancelled')
  static const TrackEventRequestEventNameEnum paywallPeriodUpgradeCancelled =
      _$trackEventRequestEventNameEnum_paywallPeriodUpgradeCancelled;
  @BuiltValueEnumConst(wireName: r'paywall.products_requested')
  static const TrackEventRequestEventNameEnum paywallPeriodProductsRequested =
      _$trackEventRequestEventNameEnum_paywallPeriodProductsRequested;
  @BuiltValueEnumConst(wireName: r'paywall.products_loaded')
  static const TrackEventRequestEventNameEnum paywallPeriodProductsLoaded =
      _$trackEventRequestEventNameEnum_paywallPeriodProductsLoaded;
  @BuiltValueEnumConst(wireName: r'paywall.products_failed')
  static const TrackEventRequestEventNameEnum paywallPeriodProductsFailed =
      _$trackEventRequestEventNameEnum_paywallPeriodProductsFailed;
  @BuiltValueEnumConst(wireName: r'paywall.offer_eligible')
  static const TrackEventRequestEventNameEnum paywallPeriodOfferEligible =
      _$trackEventRequestEventNameEnum_paywallPeriodOfferEligible;
  @BuiltValueEnumConst(wireName: r'paywall.plan_selected')
  static const TrackEventRequestEventNameEnum paywallPeriodPlanSelected =
      _$trackEventRequestEventNameEnum_paywallPeriodPlanSelected;
  @BuiltValueEnumConst(wireName: r'paywall.restore_clicked')
  static const TrackEventRequestEventNameEnum paywallPeriodRestoreClicked =
      _$trackEventRequestEventNameEnum_paywallPeriodRestoreClicked;
  @BuiltValueEnumConst(wireName: r'paywall.restore_completed')
  static const TrackEventRequestEventNameEnum paywallPeriodRestoreCompleted =
      _$trackEventRequestEventNameEnum_paywallPeriodRestoreCompleted;
  @BuiltValueEnumConst(wireName: r'paywall.restore_failed')
  static const TrackEventRequestEventNameEnum paywallPeriodRestoreFailed =
      _$trackEventRequestEventNameEnum_paywallPeriodRestoreFailed;
  @BuiltValueEnumConst(wireName: r'purchase.started')
  static const TrackEventRequestEventNameEnum purchasePeriodStarted =
      _$trackEventRequestEventNameEnum_purchasePeriodStarted;
  @BuiltValueEnumConst(wireName: r'purchase.completed')
  static const TrackEventRequestEventNameEnum purchasePeriodCompleted =
      _$trackEventRequestEventNameEnum_purchasePeriodCompleted;
  @BuiltValueEnumConst(wireName: r'purchase.failed')
  static const TrackEventRequestEventNameEnum purchasePeriodFailed =
      _$trackEventRequestEventNameEnum_purchasePeriodFailed;
  @BuiltValueEnumConst(wireName: r'purchase.refunded')
  static const TrackEventRequestEventNameEnum purchasePeriodRefunded =
      _$trackEventRequestEventNameEnum_purchasePeriodRefunded;
  @BuiltValueEnumConst(wireName: r'trial.eligible')
  static const TrackEventRequestEventNameEnum trialPeriodEligible =
      _$trackEventRequestEventNameEnum_trialPeriodEligible;
  @BuiltValueEnumConst(wireName: r'trial.ineligible')
  static const TrackEventRequestEventNameEnum trialPeriodIneligible =
      _$trackEventRequestEventNameEnum_trialPeriodIneligible;
  @BuiltValueEnumConst(wireName: r'trial.started')
  static const TrackEventRequestEventNameEnum trialPeriodStarted =
      _$trackEventRequestEventNameEnum_trialPeriodStarted;
  @BuiltValueEnumConst(wireName: r'trial.converted')
  static const TrackEventRequestEventNameEnum trialPeriodConverted =
      _$trackEventRequestEventNameEnum_trialPeriodConverted;
  @BuiltValueEnumConst(wireName: r'trial.cancelled')
  static const TrackEventRequestEventNameEnum trialPeriodCancelled =
      _$trackEventRequestEventNameEnum_trialPeriodCancelled;
  @BuiltValueEnumConst(wireName: r'trial.expired')
  static const TrackEventRequestEventNameEnum trialPeriodExpired =
      _$trackEventRequestEventNameEnum_trialPeriodExpired;
  @BuiltValueEnumConst(wireName: r'trial.billing_retry_started')
  static const TrackEventRequestEventNameEnum trialPeriodBillingRetryStarted =
      _$trackEventRequestEventNameEnum_trialPeriodBillingRetryStarted;
  @BuiltValueEnumConst(wireName: r'subscription.started')
  static const TrackEventRequestEventNameEnum subscriptionPeriodStarted =
      _$trackEventRequestEventNameEnum_subscriptionPeriodStarted;
  @BuiltValueEnumConst(wireName: r'subscription.renewed')
  static const TrackEventRequestEventNameEnum subscriptionPeriodRenewed =
      _$trackEventRequestEventNameEnum_subscriptionPeriodRenewed;
  @BuiltValueEnumConst(wireName: r'subscription.cancelled')
  static const TrackEventRequestEventNameEnum subscriptionPeriodCancelled =
      _$trackEventRequestEventNameEnum_subscriptionPeriodCancelled;
  @BuiltValueEnumConst(wireName: r'subscription.expired')
  static const TrackEventRequestEventNameEnum subscriptionPeriodExpired =
      _$trackEventRequestEventNameEnum_subscriptionPeriodExpired;
  @BuiltValueEnumConst(wireName: r'subscription.billing_issue')
  static const TrackEventRequestEventNameEnum subscriptionPeriodBillingIssue =
      _$trackEventRequestEventNameEnum_subscriptionPeriodBillingIssue;
  @BuiltValueEnumConst(wireName: r'subscription.grace_period_started')
  static const TrackEventRequestEventNameEnum
      subscriptionPeriodGracePeriodStarted =
      _$trackEventRequestEventNameEnum_subscriptionPeriodGracePeriodStarted;
  @BuiltValueEnumConst(wireName: r'subscription.recovered')
  static const TrackEventRequestEventNameEnum subscriptionPeriodRecovered =
      _$trackEventRequestEventNameEnum_subscriptionPeriodRecovered;
  @BuiltValueEnumConst(wireName: r'subscription.refunded')
  static const TrackEventRequestEventNameEnum subscriptionPeriodRefunded =
      _$trackEventRequestEventNameEnum_subscriptionPeriodRefunded;
  @BuiltValueEnumConst(wireName: r'subscription.price_increase_accepted')
  static const TrackEventRequestEventNameEnum
      subscriptionPeriodPriceIncreaseAccepted =
      _$trackEventRequestEventNameEnum_subscriptionPeriodPriceIncreaseAccepted;
  @BuiltValueEnumConst(wireName: r'subscription.price_increase_declined')
  static const TrackEventRequestEventNameEnum
      subscriptionPeriodPriceIncreaseDeclined =
      _$trackEventRequestEventNameEnum_subscriptionPeriodPriceIncreaseDeclined;
  @BuiltValueEnumConst(wireName: r'revenue.received')
  static const TrackEventRequestEventNameEnum revenuePeriodReceived =
      _$trackEventRequestEventNameEnum_revenuePeriodReceived;
  @BuiltValueEnumConst(wireName: r'referral.sent')
  static const TrackEventRequestEventNameEnum referralPeriodSent =
      _$trackEventRequestEventNameEnum_referralPeriodSent;
  @BuiltValueEnumConst(wireName: r'referral.accepted')
  static const TrackEventRequestEventNameEnum referralPeriodAccepted =
      _$trackEventRequestEventNameEnum_referralPeriodAccepted;
  @BuiltValueEnumConst(wireName: r'review.prompted')
  static const TrackEventRequestEventNameEnum reviewPeriodPrompted =
      _$trackEventRequestEventNameEnum_reviewPeriodPrompted;
  @BuiltValueEnumConst(wireName: r'review.submitted')
  static const TrackEventRequestEventNameEnum reviewPeriodSubmitted =
      _$trackEventRequestEventNameEnum_reviewPeriodSubmitted;
  @BuiltValueEnumConst(wireName: r'notification.received')
  static const TrackEventRequestEventNameEnum notificationPeriodReceived =
      _$trackEventRequestEventNameEnum_notificationPeriodReceived;
  @BuiltValueEnumConst(wireName: r'notification.opened')
  static const TrackEventRequestEventNameEnum notificationPeriodOpened =
      _$trackEventRequestEventNameEnum_notificationPeriodOpened;
  @BuiltValueEnumConst(wireName: r'error.occurred')
  static const TrackEventRequestEventNameEnum errorPeriodOccurred =
      _$trackEventRequestEventNameEnum_errorPeriodOccurred;

  static Serializer<TrackEventRequestEventNameEnum> get serializer =>
      _$trackEventRequestEventNameEnumSerializer;

  const TrackEventRequestEventNameEnum._(String name) : super(name);

  static BuiltSet<TrackEventRequestEventNameEnum> get values =>
      _$trackEventRequestEventNameEnumValues;
  static TrackEventRequestEventNameEnum valueOf(String name) =>
      _$trackEventRequestEventNameEnumValueOf(name);
}
