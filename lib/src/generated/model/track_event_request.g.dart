// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_event_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrackEventRequestEnvironmentEnum
    _$trackEventRequestEnvironmentEnum_production =
    const TrackEventRequestEnvironmentEnum._('production');
const TrackEventRequestEnvironmentEnum
    _$trackEventRequestEnvironmentEnum_staging =
    const TrackEventRequestEnvironmentEnum._('staging');
const TrackEventRequestEnvironmentEnum
    _$trackEventRequestEnvironmentEnum_development =
    const TrackEventRequestEnvironmentEnum._('development');

TrackEventRequestEnvironmentEnum _$trackEventRequestEnvironmentEnumValueOf(
    String name) {
  switch (name) {
    case 'production':
      return _$trackEventRequestEnvironmentEnum_production;
    case 'staging':
      return _$trackEventRequestEnvironmentEnum_staging;
    case 'development':
      return _$trackEventRequestEnvironmentEnum_development;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TrackEventRequestEnvironmentEnum>
    _$trackEventRequestEnvironmentEnumValues = BuiltSet<
        TrackEventRequestEnvironmentEnum>(const <TrackEventRequestEnvironmentEnum>[
  _$trackEventRequestEnvironmentEnum_production,
  _$trackEventRequestEnvironmentEnum_staging,
  _$trackEventRequestEnvironmentEnum_development,
]);

const TrackEventRequestPlatformEnum _$trackEventRequestPlatformEnum_ios =
    const TrackEventRequestPlatformEnum._('ios');
const TrackEventRequestPlatformEnum _$trackEventRequestPlatformEnum_android =
    const TrackEventRequestPlatformEnum._('android');
const TrackEventRequestPlatformEnum _$trackEventRequestPlatformEnum_web =
    const TrackEventRequestPlatformEnum._('web');
const TrackEventRequestPlatformEnum _$trackEventRequestPlatformEnum_macos =
    const TrackEventRequestPlatformEnum._('macos');
const TrackEventRequestPlatformEnum _$trackEventRequestPlatformEnum_windows =
    const TrackEventRequestPlatformEnum._('windows');
const TrackEventRequestPlatformEnum _$trackEventRequestPlatformEnum_linux =
    const TrackEventRequestPlatformEnum._('linux');
const TrackEventRequestPlatformEnum _$trackEventRequestPlatformEnum_server =
    const TrackEventRequestPlatformEnum._('server');

TrackEventRequestPlatformEnum _$trackEventRequestPlatformEnumValueOf(
    String name) {
  switch (name) {
    case 'ios':
      return _$trackEventRequestPlatformEnum_ios;
    case 'android':
      return _$trackEventRequestPlatformEnum_android;
    case 'web':
      return _$trackEventRequestPlatformEnum_web;
    case 'macos':
      return _$trackEventRequestPlatformEnum_macos;
    case 'windows':
      return _$trackEventRequestPlatformEnum_windows;
    case 'linux':
      return _$trackEventRequestPlatformEnum_linux;
    case 'server':
      return _$trackEventRequestPlatformEnum_server;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TrackEventRequestPlatformEnum>
    _$trackEventRequestPlatformEnumValues = BuiltSet<
        TrackEventRequestPlatformEnum>(const <TrackEventRequestPlatformEnum>[
  _$trackEventRequestPlatformEnum_ios,
  _$trackEventRequestPlatformEnum_android,
  _$trackEventRequestPlatformEnum_web,
  _$trackEventRequestPlatformEnum_macos,
  _$trackEventRequestPlatformEnum_windows,
  _$trackEventRequestPlatformEnum_linux,
  _$trackEventRequestPlatformEnum_server,
]);

const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_appPeriodFirstOpen =
    const TrackEventRequestEventNameEnum._('appPeriodFirstOpen');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_appPeriodOpened =
    const TrackEventRequestEventNameEnum._('appPeriodOpened');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_appPeriodUpdated =
    const TrackEventRequestEventNameEnum._('appPeriodUpdated');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_userPeriodCreated =
    const TrackEventRequestEventNameEnum._('userPeriodCreated');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_sessionPeriodStarted =
    const TrackEventRequestEventNameEnum._('sessionPeriodStarted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_sessionPeriodEnded =
    const TrackEventRequestEventNameEnum._('sessionPeriodEnded');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_acquisitionPeriodAttributionResolved =
    const TrackEventRequestEventNameEnum._(
        'acquisitionPeriodAttributionResolved');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_acquisitionPeriodAppDownload =
    const TrackEventRequestEventNameEnum._('acquisitionPeriodAppDownload');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_acquisitionPeriodUserRegistered =
    const TrackEventRequestEventNameEnum._('acquisitionPeriodUserRegistered');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_appStorePeriodProductPageViewed =
    const TrackEventRequestEventNameEnum._('appStorePeriodProductPageViewed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_appStorePeriodInstallAttributed =
    const TrackEventRequestEventNameEnum._('appStorePeriodInstallAttributed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodStarted =
    const TrackEventRequestEventNameEnum._('onboardingPeriodStarted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodCompleted =
    const TrackEventRequestEventNameEnum._('onboardingPeriodCompleted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodStepViewed =
    const TrackEventRequestEventNameEnum._('onboardingPeriodStepViewed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodStepCompleted =
    const TrackEventRequestEventNameEnum._('onboardingPeriodStepCompleted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodStepSkipped =
    const TrackEventRequestEventNameEnum._('onboardingPeriodStepSkipped');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodGoalSelected =
    const TrackEventRequestEventNameEnum._('onboardingPeriodGoalSelected');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodPermissionPrompted =
    const TrackEventRequestEventNameEnum._(
        'onboardingPeriodPermissionPrompted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodPermissionGranted =
    const TrackEventRequestEventNameEnum._('onboardingPeriodPermissionGranted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_onboardingPeriodPermissionDenied =
    const TrackEventRequestEventNameEnum._('onboardingPeriodPermissionDenied');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_surveyPeriodShown =
    const TrackEventRequestEventNameEnum._('surveyPeriodShown');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_surveyPeriodStarted =
    const TrackEventRequestEventNameEnum._('surveyPeriodStarted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_surveyPeriodCompleted =
    const TrackEventRequestEventNameEnum._('surveyPeriodCompleted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_surveyPeriodDismissed =
    const TrackEventRequestEventNameEnum._('surveyPeriodDismissed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_activationPeriodCompleted =
    const TrackEventRequestEventNameEnum._('activationPeriodCompleted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_featurePeriodUsed =
    const TrackEventRequestEventNameEnum._('featurePeriodUsed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_featurePeriodFirstUsed =
    const TrackEventRequestEventNameEnum._('featurePeriodFirstUsed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_pagePeriodViewed =
    const TrackEventRequestEventNameEnum._('pagePeriodViewed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_buttonPeriodClicked =
    const TrackEventRequestEventNameEnum._('buttonPeriodClicked');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_goalPeriodCompleted =
    const TrackEventRequestEventNameEnum._('goalPeriodCompleted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodOpened =
    const TrackEventRequestEventNameEnum._('paywallPeriodOpened');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodClosed =
    const TrackEventRequestEventNameEnum._('paywallPeriodClosed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodUpgradeClicked =
    const TrackEventRequestEventNameEnum._('paywallPeriodUpgradeClicked');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodUpgradeCancelled =
    const TrackEventRequestEventNameEnum._('paywallPeriodUpgradeCancelled');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodProductsRequested =
    const TrackEventRequestEventNameEnum._('paywallPeriodProductsRequested');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodProductsLoaded =
    const TrackEventRequestEventNameEnum._('paywallPeriodProductsLoaded');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodProductsFailed =
    const TrackEventRequestEventNameEnum._('paywallPeriodProductsFailed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodOfferEligible =
    const TrackEventRequestEventNameEnum._('paywallPeriodOfferEligible');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodPlanSelected =
    const TrackEventRequestEventNameEnum._('paywallPeriodPlanSelected');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodRestoreClicked =
    const TrackEventRequestEventNameEnum._('paywallPeriodRestoreClicked');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodRestoreCompleted =
    const TrackEventRequestEventNameEnum._('paywallPeriodRestoreCompleted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_paywallPeriodRestoreFailed =
    const TrackEventRequestEventNameEnum._('paywallPeriodRestoreFailed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_purchasePeriodStarted =
    const TrackEventRequestEventNameEnum._('purchasePeriodStarted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_purchasePeriodCompleted =
    const TrackEventRequestEventNameEnum._('purchasePeriodCompleted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_purchasePeriodFailed =
    const TrackEventRequestEventNameEnum._('purchasePeriodFailed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_purchasePeriodRefunded =
    const TrackEventRequestEventNameEnum._('purchasePeriodRefunded');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_trialPeriodEligible =
    const TrackEventRequestEventNameEnum._('trialPeriodEligible');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_trialPeriodIneligible =
    const TrackEventRequestEventNameEnum._('trialPeriodIneligible');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_trialPeriodStarted =
    const TrackEventRequestEventNameEnum._('trialPeriodStarted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_trialPeriodConverted =
    const TrackEventRequestEventNameEnum._('trialPeriodConverted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_trialPeriodCancelled =
    const TrackEventRequestEventNameEnum._('trialPeriodCancelled');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_trialPeriodExpired =
    const TrackEventRequestEventNameEnum._('trialPeriodExpired');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_trialPeriodBillingRetryStarted =
    const TrackEventRequestEventNameEnum._('trialPeriodBillingRetryStarted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodStarted =
    const TrackEventRequestEventNameEnum._('subscriptionPeriodStarted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodRenewed =
    const TrackEventRequestEventNameEnum._('subscriptionPeriodRenewed');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodCancelled =
    const TrackEventRequestEventNameEnum._('subscriptionPeriodCancelled');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodExpired =
    const TrackEventRequestEventNameEnum._('subscriptionPeriodExpired');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodBillingIssue =
    const TrackEventRequestEventNameEnum._('subscriptionPeriodBillingIssue');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodGracePeriodStarted =
    const TrackEventRequestEventNameEnum._(
        'subscriptionPeriodGracePeriodStarted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodRecovered =
    const TrackEventRequestEventNameEnum._('subscriptionPeriodRecovered');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodRefunded =
    const TrackEventRequestEventNameEnum._('subscriptionPeriodRefunded');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodPriceIncreaseAccepted =
    const TrackEventRequestEventNameEnum._(
        'subscriptionPeriodPriceIncreaseAccepted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_subscriptionPeriodPriceIncreaseDeclined =
    const TrackEventRequestEventNameEnum._(
        'subscriptionPeriodPriceIncreaseDeclined');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_revenuePeriodReceived =
    const TrackEventRequestEventNameEnum._('revenuePeriodReceived');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_referralPeriodSent =
    const TrackEventRequestEventNameEnum._('referralPeriodSent');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_referralPeriodAccepted =
    const TrackEventRequestEventNameEnum._('referralPeriodAccepted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_reviewPeriodPrompted =
    const TrackEventRequestEventNameEnum._('reviewPeriodPrompted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_reviewPeriodSubmitted =
    const TrackEventRequestEventNameEnum._('reviewPeriodSubmitted');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_notificationPeriodReceived =
    const TrackEventRequestEventNameEnum._('notificationPeriodReceived');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_notificationPeriodOpened =
    const TrackEventRequestEventNameEnum._('notificationPeriodOpened');
const TrackEventRequestEventNameEnum
    _$trackEventRequestEventNameEnum_errorPeriodOccurred =
    const TrackEventRequestEventNameEnum._('errorPeriodOccurred');

TrackEventRequestEventNameEnum _$trackEventRequestEventNameEnumValueOf(
    String name) {
  switch (name) {
    case 'appPeriodFirstOpen':
      return _$trackEventRequestEventNameEnum_appPeriodFirstOpen;
    case 'appPeriodOpened':
      return _$trackEventRequestEventNameEnum_appPeriodOpened;
    case 'appPeriodUpdated':
      return _$trackEventRequestEventNameEnum_appPeriodUpdated;
    case 'userPeriodCreated':
      return _$trackEventRequestEventNameEnum_userPeriodCreated;
    case 'sessionPeriodStarted':
      return _$trackEventRequestEventNameEnum_sessionPeriodStarted;
    case 'sessionPeriodEnded':
      return _$trackEventRequestEventNameEnum_sessionPeriodEnded;
    case 'acquisitionPeriodAttributionResolved':
      return _$trackEventRequestEventNameEnum_acquisitionPeriodAttributionResolved;
    case 'acquisitionPeriodAppDownload':
      return _$trackEventRequestEventNameEnum_acquisitionPeriodAppDownload;
    case 'acquisitionPeriodUserRegistered':
      return _$trackEventRequestEventNameEnum_acquisitionPeriodUserRegistered;
    case 'appStorePeriodProductPageViewed':
      return _$trackEventRequestEventNameEnum_appStorePeriodProductPageViewed;
    case 'appStorePeriodInstallAttributed':
      return _$trackEventRequestEventNameEnum_appStorePeriodInstallAttributed;
    case 'onboardingPeriodStarted':
      return _$trackEventRequestEventNameEnum_onboardingPeriodStarted;
    case 'onboardingPeriodCompleted':
      return _$trackEventRequestEventNameEnum_onboardingPeriodCompleted;
    case 'onboardingPeriodStepViewed':
      return _$trackEventRequestEventNameEnum_onboardingPeriodStepViewed;
    case 'onboardingPeriodStepCompleted':
      return _$trackEventRequestEventNameEnum_onboardingPeriodStepCompleted;
    case 'onboardingPeriodStepSkipped':
      return _$trackEventRequestEventNameEnum_onboardingPeriodStepSkipped;
    case 'onboardingPeriodGoalSelected':
      return _$trackEventRequestEventNameEnum_onboardingPeriodGoalSelected;
    case 'onboardingPeriodPermissionPrompted':
      return _$trackEventRequestEventNameEnum_onboardingPeriodPermissionPrompted;
    case 'onboardingPeriodPermissionGranted':
      return _$trackEventRequestEventNameEnum_onboardingPeriodPermissionGranted;
    case 'onboardingPeriodPermissionDenied':
      return _$trackEventRequestEventNameEnum_onboardingPeriodPermissionDenied;
    case 'surveyPeriodShown':
      return _$trackEventRequestEventNameEnum_surveyPeriodShown;
    case 'surveyPeriodStarted':
      return _$trackEventRequestEventNameEnum_surveyPeriodStarted;
    case 'surveyPeriodCompleted':
      return _$trackEventRequestEventNameEnum_surveyPeriodCompleted;
    case 'surveyPeriodDismissed':
      return _$trackEventRequestEventNameEnum_surveyPeriodDismissed;
    case 'activationPeriodCompleted':
      return _$trackEventRequestEventNameEnum_activationPeriodCompleted;
    case 'featurePeriodUsed':
      return _$trackEventRequestEventNameEnum_featurePeriodUsed;
    case 'featurePeriodFirstUsed':
      return _$trackEventRequestEventNameEnum_featurePeriodFirstUsed;
    case 'pagePeriodViewed':
      return _$trackEventRequestEventNameEnum_pagePeriodViewed;
    case 'buttonPeriodClicked':
      return _$trackEventRequestEventNameEnum_buttonPeriodClicked;
    case 'goalPeriodCompleted':
      return _$trackEventRequestEventNameEnum_goalPeriodCompleted;
    case 'paywallPeriodOpened':
      return _$trackEventRequestEventNameEnum_paywallPeriodOpened;
    case 'paywallPeriodClosed':
      return _$trackEventRequestEventNameEnum_paywallPeriodClosed;
    case 'paywallPeriodUpgradeClicked':
      return _$trackEventRequestEventNameEnum_paywallPeriodUpgradeClicked;
    case 'paywallPeriodUpgradeCancelled':
      return _$trackEventRequestEventNameEnum_paywallPeriodUpgradeCancelled;
    case 'paywallPeriodProductsRequested':
      return _$trackEventRequestEventNameEnum_paywallPeriodProductsRequested;
    case 'paywallPeriodProductsLoaded':
      return _$trackEventRequestEventNameEnum_paywallPeriodProductsLoaded;
    case 'paywallPeriodProductsFailed':
      return _$trackEventRequestEventNameEnum_paywallPeriodProductsFailed;
    case 'paywallPeriodOfferEligible':
      return _$trackEventRequestEventNameEnum_paywallPeriodOfferEligible;
    case 'paywallPeriodPlanSelected':
      return _$trackEventRequestEventNameEnum_paywallPeriodPlanSelected;
    case 'paywallPeriodRestoreClicked':
      return _$trackEventRequestEventNameEnum_paywallPeriodRestoreClicked;
    case 'paywallPeriodRestoreCompleted':
      return _$trackEventRequestEventNameEnum_paywallPeriodRestoreCompleted;
    case 'paywallPeriodRestoreFailed':
      return _$trackEventRequestEventNameEnum_paywallPeriodRestoreFailed;
    case 'purchasePeriodStarted':
      return _$trackEventRequestEventNameEnum_purchasePeriodStarted;
    case 'purchasePeriodCompleted':
      return _$trackEventRequestEventNameEnum_purchasePeriodCompleted;
    case 'purchasePeriodFailed':
      return _$trackEventRequestEventNameEnum_purchasePeriodFailed;
    case 'purchasePeriodRefunded':
      return _$trackEventRequestEventNameEnum_purchasePeriodRefunded;
    case 'trialPeriodEligible':
      return _$trackEventRequestEventNameEnum_trialPeriodEligible;
    case 'trialPeriodIneligible':
      return _$trackEventRequestEventNameEnum_trialPeriodIneligible;
    case 'trialPeriodStarted':
      return _$trackEventRequestEventNameEnum_trialPeriodStarted;
    case 'trialPeriodConverted':
      return _$trackEventRequestEventNameEnum_trialPeriodConverted;
    case 'trialPeriodCancelled':
      return _$trackEventRequestEventNameEnum_trialPeriodCancelled;
    case 'trialPeriodExpired':
      return _$trackEventRequestEventNameEnum_trialPeriodExpired;
    case 'trialPeriodBillingRetryStarted':
      return _$trackEventRequestEventNameEnum_trialPeriodBillingRetryStarted;
    case 'subscriptionPeriodStarted':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodStarted;
    case 'subscriptionPeriodRenewed':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodRenewed;
    case 'subscriptionPeriodCancelled':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodCancelled;
    case 'subscriptionPeriodExpired':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodExpired;
    case 'subscriptionPeriodBillingIssue':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodBillingIssue;
    case 'subscriptionPeriodGracePeriodStarted':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodGracePeriodStarted;
    case 'subscriptionPeriodRecovered':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodRecovered;
    case 'subscriptionPeriodRefunded':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodRefunded;
    case 'subscriptionPeriodPriceIncreaseAccepted':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodPriceIncreaseAccepted;
    case 'subscriptionPeriodPriceIncreaseDeclined':
      return _$trackEventRequestEventNameEnum_subscriptionPeriodPriceIncreaseDeclined;
    case 'revenuePeriodReceived':
      return _$trackEventRequestEventNameEnum_revenuePeriodReceived;
    case 'referralPeriodSent':
      return _$trackEventRequestEventNameEnum_referralPeriodSent;
    case 'referralPeriodAccepted':
      return _$trackEventRequestEventNameEnum_referralPeriodAccepted;
    case 'reviewPeriodPrompted':
      return _$trackEventRequestEventNameEnum_reviewPeriodPrompted;
    case 'reviewPeriodSubmitted':
      return _$trackEventRequestEventNameEnum_reviewPeriodSubmitted;
    case 'notificationPeriodReceived':
      return _$trackEventRequestEventNameEnum_notificationPeriodReceived;
    case 'notificationPeriodOpened':
      return _$trackEventRequestEventNameEnum_notificationPeriodOpened;
    case 'errorPeriodOccurred':
      return _$trackEventRequestEventNameEnum_errorPeriodOccurred;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TrackEventRequestEventNameEnum>
    _$trackEventRequestEventNameEnumValues = BuiltSet<
        TrackEventRequestEventNameEnum>(const <TrackEventRequestEventNameEnum>[
  _$trackEventRequestEventNameEnum_appPeriodFirstOpen,
  _$trackEventRequestEventNameEnum_appPeriodOpened,
  _$trackEventRequestEventNameEnum_appPeriodUpdated,
  _$trackEventRequestEventNameEnum_userPeriodCreated,
  _$trackEventRequestEventNameEnum_sessionPeriodStarted,
  _$trackEventRequestEventNameEnum_sessionPeriodEnded,
  _$trackEventRequestEventNameEnum_acquisitionPeriodAttributionResolved,
  _$trackEventRequestEventNameEnum_acquisitionPeriodAppDownload,
  _$trackEventRequestEventNameEnum_acquisitionPeriodUserRegistered,
  _$trackEventRequestEventNameEnum_appStorePeriodProductPageViewed,
  _$trackEventRequestEventNameEnum_appStorePeriodInstallAttributed,
  _$trackEventRequestEventNameEnum_onboardingPeriodStarted,
  _$trackEventRequestEventNameEnum_onboardingPeriodCompleted,
  _$trackEventRequestEventNameEnum_onboardingPeriodStepViewed,
  _$trackEventRequestEventNameEnum_onboardingPeriodStepCompleted,
  _$trackEventRequestEventNameEnum_onboardingPeriodStepSkipped,
  _$trackEventRequestEventNameEnum_onboardingPeriodGoalSelected,
  _$trackEventRequestEventNameEnum_onboardingPeriodPermissionPrompted,
  _$trackEventRequestEventNameEnum_onboardingPeriodPermissionGranted,
  _$trackEventRequestEventNameEnum_onboardingPeriodPermissionDenied,
  _$trackEventRequestEventNameEnum_surveyPeriodShown,
  _$trackEventRequestEventNameEnum_surveyPeriodStarted,
  _$trackEventRequestEventNameEnum_surveyPeriodCompleted,
  _$trackEventRequestEventNameEnum_surveyPeriodDismissed,
  _$trackEventRequestEventNameEnum_activationPeriodCompleted,
  _$trackEventRequestEventNameEnum_featurePeriodUsed,
  _$trackEventRequestEventNameEnum_featurePeriodFirstUsed,
  _$trackEventRequestEventNameEnum_pagePeriodViewed,
  _$trackEventRequestEventNameEnum_buttonPeriodClicked,
  _$trackEventRequestEventNameEnum_goalPeriodCompleted,
  _$trackEventRequestEventNameEnum_paywallPeriodOpened,
  _$trackEventRequestEventNameEnum_paywallPeriodClosed,
  _$trackEventRequestEventNameEnum_paywallPeriodUpgradeClicked,
  _$trackEventRequestEventNameEnum_paywallPeriodUpgradeCancelled,
  _$trackEventRequestEventNameEnum_paywallPeriodProductsRequested,
  _$trackEventRequestEventNameEnum_paywallPeriodProductsLoaded,
  _$trackEventRequestEventNameEnum_paywallPeriodProductsFailed,
  _$trackEventRequestEventNameEnum_paywallPeriodOfferEligible,
  _$trackEventRequestEventNameEnum_paywallPeriodPlanSelected,
  _$trackEventRequestEventNameEnum_paywallPeriodRestoreClicked,
  _$trackEventRequestEventNameEnum_paywallPeriodRestoreCompleted,
  _$trackEventRequestEventNameEnum_paywallPeriodRestoreFailed,
  _$trackEventRequestEventNameEnum_purchasePeriodStarted,
  _$trackEventRequestEventNameEnum_purchasePeriodCompleted,
  _$trackEventRequestEventNameEnum_purchasePeriodFailed,
  _$trackEventRequestEventNameEnum_purchasePeriodRefunded,
  _$trackEventRequestEventNameEnum_trialPeriodEligible,
  _$trackEventRequestEventNameEnum_trialPeriodIneligible,
  _$trackEventRequestEventNameEnum_trialPeriodStarted,
  _$trackEventRequestEventNameEnum_trialPeriodConverted,
  _$trackEventRequestEventNameEnum_trialPeriodCancelled,
  _$trackEventRequestEventNameEnum_trialPeriodExpired,
  _$trackEventRequestEventNameEnum_trialPeriodBillingRetryStarted,
  _$trackEventRequestEventNameEnum_subscriptionPeriodStarted,
  _$trackEventRequestEventNameEnum_subscriptionPeriodRenewed,
  _$trackEventRequestEventNameEnum_subscriptionPeriodCancelled,
  _$trackEventRequestEventNameEnum_subscriptionPeriodExpired,
  _$trackEventRequestEventNameEnum_subscriptionPeriodBillingIssue,
  _$trackEventRequestEventNameEnum_subscriptionPeriodGracePeriodStarted,
  _$trackEventRequestEventNameEnum_subscriptionPeriodRecovered,
  _$trackEventRequestEventNameEnum_subscriptionPeriodRefunded,
  _$trackEventRequestEventNameEnum_subscriptionPeriodPriceIncreaseAccepted,
  _$trackEventRequestEventNameEnum_subscriptionPeriodPriceIncreaseDeclined,
  _$trackEventRequestEventNameEnum_revenuePeriodReceived,
  _$trackEventRequestEventNameEnum_referralPeriodSent,
  _$trackEventRequestEventNameEnum_referralPeriodAccepted,
  _$trackEventRequestEventNameEnum_reviewPeriodPrompted,
  _$trackEventRequestEventNameEnum_reviewPeriodSubmitted,
  _$trackEventRequestEventNameEnum_notificationPeriodReceived,
  _$trackEventRequestEventNameEnum_notificationPeriodOpened,
  _$trackEventRequestEventNameEnum_errorPeriodOccurred,
]);

Serializer<TrackEventRequestEnvironmentEnum>
    _$trackEventRequestEnvironmentEnumSerializer =
    _$TrackEventRequestEnvironmentEnumSerializer();
Serializer<TrackEventRequestPlatformEnum>
    _$trackEventRequestPlatformEnumSerializer =
    _$TrackEventRequestPlatformEnumSerializer();
Serializer<TrackEventRequestEventNameEnum>
    _$trackEventRequestEventNameEnumSerializer =
    _$TrackEventRequestEventNameEnumSerializer();

class _$TrackEventRequestEnvironmentEnumSerializer
    implements PrimitiveSerializer<TrackEventRequestEnvironmentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'production': 'production',
    'staging': 'staging',
    'development': 'development',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'production': 'production',
    'staging': 'staging',
    'development': 'development',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackEventRequestEnvironmentEnum];
  @override
  final String wireName = 'TrackEventRequestEnvironmentEnum';

  @override
  Object serialize(
          Serializers serializers, TrackEventRequestEnvironmentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackEventRequestEnvironmentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackEventRequestEnvironmentEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TrackEventRequestPlatformEnumSerializer
    implements PrimitiveSerializer<TrackEventRequestPlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ios': 'ios',
    'android': 'android',
    'web': 'web',
    'macos': 'macos',
    'windows': 'windows',
    'linux': 'linux',
    'server': 'server',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ios': 'ios',
    'android': 'android',
    'web': 'web',
    'macos': 'macos',
    'windows': 'windows',
    'linux': 'linux',
    'server': 'server',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackEventRequestPlatformEnum];
  @override
  final String wireName = 'TrackEventRequestPlatformEnum';

  @override
  Object serialize(
          Serializers serializers, TrackEventRequestPlatformEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackEventRequestPlatformEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackEventRequestPlatformEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TrackEventRequestEventNameEnumSerializer
    implements PrimitiveSerializer<TrackEventRequestEventNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'appPeriodFirstOpen': 'app.first_open',
    'appPeriodOpened': 'app.opened',
    'appPeriodUpdated': 'app.updated',
    'userPeriodCreated': 'user.created',
    'sessionPeriodStarted': 'session.started',
    'sessionPeriodEnded': 'session.ended',
    'acquisitionPeriodAttributionResolved': 'acquisition.attribution_resolved',
    'acquisitionPeriodAppDownload': 'acquisition.app_download',
    'acquisitionPeriodUserRegistered': 'acquisition.user_registered',
    'appStorePeriodProductPageViewed': 'app_store.product_page_viewed',
    'appStorePeriodInstallAttributed': 'app_store.install_attributed',
    'onboardingPeriodStarted': 'onboarding.started',
    'onboardingPeriodCompleted': 'onboarding.completed',
    'onboardingPeriodStepViewed': 'onboarding.step_viewed',
    'onboardingPeriodStepCompleted': 'onboarding.step_completed',
    'onboardingPeriodStepSkipped': 'onboarding.step_skipped',
    'onboardingPeriodGoalSelected': 'onboarding.goal_selected',
    'onboardingPeriodPermissionPrompted': 'onboarding.permission_prompted',
    'onboardingPeriodPermissionGranted': 'onboarding.permission_granted',
    'onboardingPeriodPermissionDenied': 'onboarding.permission_denied',
    'surveyPeriodShown': 'survey.shown',
    'surveyPeriodStarted': 'survey.started',
    'surveyPeriodCompleted': 'survey.completed',
    'surveyPeriodDismissed': 'survey.dismissed',
    'activationPeriodCompleted': 'activation.completed',
    'featurePeriodUsed': 'feature.used',
    'featurePeriodFirstUsed': 'feature.first_used',
    'pagePeriodViewed': 'page.viewed',
    'buttonPeriodClicked': 'button.clicked',
    'goalPeriodCompleted': 'goal.completed',
    'paywallPeriodOpened': 'paywall.opened',
    'paywallPeriodClosed': 'paywall.closed',
    'paywallPeriodUpgradeClicked': 'paywall.upgrade_clicked',
    'paywallPeriodUpgradeCancelled': 'paywall.upgrade_cancelled',
    'paywallPeriodProductsRequested': 'paywall.products_requested',
    'paywallPeriodProductsLoaded': 'paywall.products_loaded',
    'paywallPeriodProductsFailed': 'paywall.products_failed',
    'paywallPeriodOfferEligible': 'paywall.offer_eligible',
    'paywallPeriodPlanSelected': 'paywall.plan_selected',
    'paywallPeriodRestoreClicked': 'paywall.restore_clicked',
    'paywallPeriodRestoreCompleted': 'paywall.restore_completed',
    'paywallPeriodRestoreFailed': 'paywall.restore_failed',
    'purchasePeriodStarted': 'purchase.started',
    'purchasePeriodCompleted': 'purchase.completed',
    'purchasePeriodFailed': 'purchase.failed',
    'purchasePeriodRefunded': 'purchase.refunded',
    'trialPeriodEligible': 'trial.eligible',
    'trialPeriodIneligible': 'trial.ineligible',
    'trialPeriodStarted': 'trial.started',
    'trialPeriodConverted': 'trial.converted',
    'trialPeriodCancelled': 'trial.cancelled',
    'trialPeriodExpired': 'trial.expired',
    'trialPeriodBillingRetryStarted': 'trial.billing_retry_started',
    'subscriptionPeriodStarted': 'subscription.started',
    'subscriptionPeriodRenewed': 'subscription.renewed',
    'subscriptionPeriodCancelled': 'subscription.cancelled',
    'subscriptionPeriodExpired': 'subscription.expired',
    'subscriptionPeriodBillingIssue': 'subscription.billing_issue',
    'subscriptionPeriodGracePeriodStarted': 'subscription.grace_period_started',
    'subscriptionPeriodRecovered': 'subscription.recovered',
    'subscriptionPeriodRefunded': 'subscription.refunded',
    'subscriptionPeriodPriceIncreaseAccepted':
        'subscription.price_increase_accepted',
    'subscriptionPeriodPriceIncreaseDeclined':
        'subscription.price_increase_declined',
    'revenuePeriodReceived': 'revenue.received',
    'referralPeriodSent': 'referral.sent',
    'referralPeriodAccepted': 'referral.accepted',
    'reviewPeriodPrompted': 'review.prompted',
    'reviewPeriodSubmitted': 'review.submitted',
    'notificationPeriodReceived': 'notification.received',
    'notificationPeriodOpened': 'notification.opened',
    'errorPeriodOccurred': 'error.occurred',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'app.first_open': 'appPeriodFirstOpen',
    'app.opened': 'appPeriodOpened',
    'app.updated': 'appPeriodUpdated',
    'user.created': 'userPeriodCreated',
    'session.started': 'sessionPeriodStarted',
    'session.ended': 'sessionPeriodEnded',
    'acquisition.attribution_resolved': 'acquisitionPeriodAttributionResolved',
    'acquisition.app_download': 'acquisitionPeriodAppDownload',
    'acquisition.user_registered': 'acquisitionPeriodUserRegistered',
    'app_store.product_page_viewed': 'appStorePeriodProductPageViewed',
    'app_store.install_attributed': 'appStorePeriodInstallAttributed',
    'onboarding.started': 'onboardingPeriodStarted',
    'onboarding.completed': 'onboardingPeriodCompleted',
    'onboarding.step_viewed': 'onboardingPeriodStepViewed',
    'onboarding.step_completed': 'onboardingPeriodStepCompleted',
    'onboarding.step_skipped': 'onboardingPeriodStepSkipped',
    'onboarding.goal_selected': 'onboardingPeriodGoalSelected',
    'onboarding.permission_prompted': 'onboardingPeriodPermissionPrompted',
    'onboarding.permission_granted': 'onboardingPeriodPermissionGranted',
    'onboarding.permission_denied': 'onboardingPeriodPermissionDenied',
    'survey.shown': 'surveyPeriodShown',
    'survey.started': 'surveyPeriodStarted',
    'survey.completed': 'surveyPeriodCompleted',
    'survey.dismissed': 'surveyPeriodDismissed',
    'activation.completed': 'activationPeriodCompleted',
    'feature.used': 'featurePeriodUsed',
    'feature.first_used': 'featurePeriodFirstUsed',
    'page.viewed': 'pagePeriodViewed',
    'button.clicked': 'buttonPeriodClicked',
    'goal.completed': 'goalPeriodCompleted',
    'paywall.opened': 'paywallPeriodOpened',
    'paywall.closed': 'paywallPeriodClosed',
    'paywall.upgrade_clicked': 'paywallPeriodUpgradeClicked',
    'paywall.upgrade_cancelled': 'paywallPeriodUpgradeCancelled',
    'paywall.products_requested': 'paywallPeriodProductsRequested',
    'paywall.products_loaded': 'paywallPeriodProductsLoaded',
    'paywall.products_failed': 'paywallPeriodProductsFailed',
    'paywall.offer_eligible': 'paywallPeriodOfferEligible',
    'paywall.plan_selected': 'paywallPeriodPlanSelected',
    'paywall.restore_clicked': 'paywallPeriodRestoreClicked',
    'paywall.restore_completed': 'paywallPeriodRestoreCompleted',
    'paywall.restore_failed': 'paywallPeriodRestoreFailed',
    'purchase.started': 'purchasePeriodStarted',
    'purchase.completed': 'purchasePeriodCompleted',
    'purchase.failed': 'purchasePeriodFailed',
    'purchase.refunded': 'purchasePeriodRefunded',
    'trial.eligible': 'trialPeriodEligible',
    'trial.ineligible': 'trialPeriodIneligible',
    'trial.started': 'trialPeriodStarted',
    'trial.converted': 'trialPeriodConverted',
    'trial.cancelled': 'trialPeriodCancelled',
    'trial.expired': 'trialPeriodExpired',
    'trial.billing_retry_started': 'trialPeriodBillingRetryStarted',
    'subscription.started': 'subscriptionPeriodStarted',
    'subscription.renewed': 'subscriptionPeriodRenewed',
    'subscription.cancelled': 'subscriptionPeriodCancelled',
    'subscription.expired': 'subscriptionPeriodExpired',
    'subscription.billing_issue': 'subscriptionPeriodBillingIssue',
    'subscription.grace_period_started': 'subscriptionPeriodGracePeriodStarted',
    'subscription.recovered': 'subscriptionPeriodRecovered',
    'subscription.refunded': 'subscriptionPeriodRefunded',
    'subscription.price_increase_accepted':
        'subscriptionPeriodPriceIncreaseAccepted',
    'subscription.price_increase_declined':
        'subscriptionPeriodPriceIncreaseDeclined',
    'revenue.received': 'revenuePeriodReceived',
    'referral.sent': 'referralPeriodSent',
    'referral.accepted': 'referralPeriodAccepted',
    'review.prompted': 'reviewPeriodPrompted',
    'review.submitted': 'reviewPeriodSubmitted',
    'notification.received': 'notificationPeriodReceived',
    'notification.opened': 'notificationPeriodOpened',
    'error.occurred': 'errorPeriodOccurred',
  };

  @override
  final Iterable<Type> types = const <Type>[TrackEventRequestEventNameEnum];
  @override
  final String wireName = 'TrackEventRequestEventNameEnum';

  @override
  Object serialize(
          Serializers serializers, TrackEventRequestEventNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TrackEventRequestEventNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TrackEventRequestEventNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TrackEventRequest extends TrackEventRequest {
  @override
  final String app;
  @override
  final TrackEventRequestEnvironmentEnum? environment;
  @override
  final TrackEventRequestPlatformEnum? platform;
  @override
  final String? userId;
  @override
  final String? anonymousId;
  @override
  final String? deviceId;
  @override
  final String? eventId;
  @override
  final TrackEventRequestEventNameEnum eventName;
  @override
  final String? appVersion;
  @override
  final String? buildNumber;
  @override
  final String? source_;
  @override
  final String? country;
  @override
  final String? locale;
  @override
  final String? timezone;
  @override
  final String? attributionProvider;
  @override
  final String? attributionId;
  @override
  final DateTime? occurredAt;
  @override
  final BuiltMap<String, JsonObject?>? properties;
  @override
  final num? metricValue;
  @override
  final String? metricLabel;

  factory _$TrackEventRequest(
          [void Function(TrackEventRequestBuilder)? updates]) =>
      (TrackEventRequestBuilder()..update(updates))._build();

  _$TrackEventRequest._(
      {required this.app,
      this.environment,
      this.platform,
      this.userId,
      this.anonymousId,
      this.deviceId,
      this.eventId,
      required this.eventName,
      this.appVersion,
      this.buildNumber,
      this.source_,
      this.country,
      this.locale,
      this.timezone,
      this.attributionProvider,
      this.attributionId,
      this.occurredAt,
      this.properties,
      this.metricValue,
      this.metricLabel})
      : super._();
  @override
  TrackEventRequest rebuild(void Function(TrackEventRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrackEventRequestBuilder toBuilder() =>
      TrackEventRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrackEventRequest &&
        app == other.app &&
        environment == other.environment &&
        platform == other.platform &&
        userId == other.userId &&
        anonymousId == other.anonymousId &&
        deviceId == other.deviceId &&
        eventId == other.eventId &&
        eventName == other.eventName &&
        appVersion == other.appVersion &&
        buildNumber == other.buildNumber &&
        source_ == other.source_ &&
        country == other.country &&
        locale == other.locale &&
        timezone == other.timezone &&
        attributionProvider == other.attributionProvider &&
        attributionId == other.attributionId &&
        occurredAt == other.occurredAt &&
        properties == other.properties &&
        metricValue == other.metricValue &&
        metricLabel == other.metricLabel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, app.hashCode);
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, anonymousId.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, eventName.hashCode);
    _$hash = $jc(_$hash, appVersion.hashCode);
    _$hash = $jc(_$hash, buildNumber.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, attributionProvider.hashCode);
    _$hash = $jc(_$hash, attributionId.hashCode);
    _$hash = $jc(_$hash, occurredAt.hashCode);
    _$hash = $jc(_$hash, properties.hashCode);
    _$hash = $jc(_$hash, metricValue.hashCode);
    _$hash = $jc(_$hash, metricLabel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrackEventRequest')
          ..add('app', app)
          ..add('environment', environment)
          ..add('platform', platform)
          ..add('userId', userId)
          ..add('anonymousId', anonymousId)
          ..add('deviceId', deviceId)
          ..add('eventId', eventId)
          ..add('eventName', eventName)
          ..add('appVersion', appVersion)
          ..add('buildNumber', buildNumber)
          ..add('source_', source_)
          ..add('country', country)
          ..add('locale', locale)
          ..add('timezone', timezone)
          ..add('attributionProvider', attributionProvider)
          ..add('attributionId', attributionId)
          ..add('occurredAt', occurredAt)
          ..add('properties', properties)
          ..add('metricValue', metricValue)
          ..add('metricLabel', metricLabel))
        .toString();
  }
}

class TrackEventRequestBuilder
    implements Builder<TrackEventRequest, TrackEventRequestBuilder> {
  _$TrackEventRequest? _$v;

  String? _app;
  String? get app => _$this._app;
  set app(String? app) => _$this._app = app;

  TrackEventRequestEnvironmentEnum? _environment;
  TrackEventRequestEnvironmentEnum? get environment => _$this._environment;
  set environment(TrackEventRequestEnvironmentEnum? environment) =>
      _$this._environment = environment;

  TrackEventRequestPlatformEnum? _platform;
  TrackEventRequestPlatformEnum? get platform => _$this._platform;
  set platform(TrackEventRequestPlatformEnum? platform) =>
      _$this._platform = platform;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _anonymousId;
  String? get anonymousId => _$this._anonymousId;
  set anonymousId(String? anonymousId) => _$this._anonymousId = anonymousId;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(String? deviceId) => _$this._deviceId = deviceId;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  TrackEventRequestEventNameEnum? _eventName;
  TrackEventRequestEventNameEnum? get eventName => _$this._eventName;
  set eventName(TrackEventRequestEventNameEnum? eventName) =>
      _$this._eventName = eventName;

  String? _appVersion;
  String? get appVersion => _$this._appVersion;
  set appVersion(String? appVersion) => _$this._appVersion = appVersion;

  String? _buildNumber;
  String? get buildNumber => _$this._buildNumber;
  set buildNumber(String? buildNumber) => _$this._buildNumber = buildNumber;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _attributionProvider;
  String? get attributionProvider => _$this._attributionProvider;
  set attributionProvider(String? attributionProvider) =>
      _$this._attributionProvider = attributionProvider;

  String? _attributionId;
  String? get attributionId => _$this._attributionId;
  set attributionId(String? attributionId) =>
      _$this._attributionId = attributionId;

  DateTime? _occurredAt;
  DateTime? get occurredAt => _$this._occurredAt;
  set occurredAt(DateTime? occurredAt) => _$this._occurredAt = occurredAt;

  MapBuilder<String, JsonObject?>? _properties;
  MapBuilder<String, JsonObject?> get properties =>
      _$this._properties ??= MapBuilder<String, JsonObject?>();
  set properties(MapBuilder<String, JsonObject?>? properties) =>
      _$this._properties = properties;

  num? _metricValue;
  num? get metricValue => _$this._metricValue;
  set metricValue(num? metricValue) => _$this._metricValue = metricValue;

  String? _metricLabel;
  String? get metricLabel => _$this._metricLabel;
  set metricLabel(String? metricLabel) => _$this._metricLabel = metricLabel;

  TrackEventRequestBuilder() {
    TrackEventRequest._defaults(this);
  }

  TrackEventRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _app = $v.app;
      _environment = $v.environment;
      _platform = $v.platform;
      _userId = $v.userId;
      _anonymousId = $v.anonymousId;
      _deviceId = $v.deviceId;
      _eventId = $v.eventId;
      _eventName = $v.eventName;
      _appVersion = $v.appVersion;
      _buildNumber = $v.buildNumber;
      _source_ = $v.source_;
      _country = $v.country;
      _locale = $v.locale;
      _timezone = $v.timezone;
      _attributionProvider = $v.attributionProvider;
      _attributionId = $v.attributionId;
      _occurredAt = $v.occurredAt;
      _properties = $v.properties?.toBuilder();
      _metricValue = $v.metricValue;
      _metricLabel = $v.metricLabel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrackEventRequest other) {
    _$v = other as _$TrackEventRequest;
  }

  @override
  void update(void Function(TrackEventRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrackEventRequest build() => _build();

  _$TrackEventRequest _build() {
    _$TrackEventRequest _$result;
    try {
      _$result = _$v ??
          _$TrackEventRequest._(
            app: BuiltValueNullFieldError.checkNotNull(
                app, r'TrackEventRequest', 'app'),
            environment: environment,
            platform: platform,
            userId: userId,
            anonymousId: anonymousId,
            deviceId: deviceId,
            eventId: eventId,
            eventName: BuiltValueNullFieldError.checkNotNull(
                eventName, r'TrackEventRequest', 'eventName'),
            appVersion: appVersion,
            buildNumber: buildNumber,
            source_: source_,
            country: country,
            locale: locale,
            timezone: timezone,
            attributionProvider: attributionProvider,
            attributionId: attributionId,
            occurredAt: occurredAt,
            properties: _properties?.build(),
            metricValue: metricValue,
            metricLabel: metricLabel,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'properties';
        _properties?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TrackEventRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
