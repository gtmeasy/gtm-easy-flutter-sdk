/// Canonical event names accepted by the Growth ingest API.
abstract final class GrowthEvents {
  static const appFirstOpen = 'app.first_open';
  static const appOpened = 'app.opened';
  static const appUpdated = 'app.updated';
  static const userCreated = 'user.created';
  static const sessionStarted = 'session.started';
  static const sessionEnded = 'session.ended';
  static const acquisitionAttributionResolved =
      'acquisition.attribution_resolved';
  static const acquisitionAppDownload = 'acquisition.app_download';
  static const acquisitionUserRegistered = 'acquisition.user_registered';
  static const appStoreProductPageViewed = 'app_store.product_page_viewed';
  static const appStoreInstallAttributed = 'app_store.install_attributed';
  static const onboardingStarted = 'onboarding.started';
  static const onboardingCompleted = 'onboarding.completed';
  static const onboardingStepViewed = 'onboarding.step_viewed';
  static const onboardingStepCompleted = 'onboarding.step_completed';
  static const onboardingStepSkipped = 'onboarding.step_skipped';
  static const onboardingGoalSelected = 'onboarding.goal_selected';
  static const onboardingPermissionPrompted = 'onboarding.permission_prompted';
  static const onboardingPermissionGranted = 'onboarding.permission_granted';
  static const onboardingPermissionDenied = 'onboarding.permission_denied';
  static const surveyShown = 'survey.shown';
  static const surveyStarted = 'survey.started';
  static const surveyCompleted = 'survey.completed';
  static const surveyDismissed = 'survey.dismissed';
  static const activationCompleted = 'activation.completed';
  static const featureUsed = 'feature.used';
  static const featureFirstUsed = 'feature.first_used';
  static const pageViewed = 'page.viewed';
  static const buttonClicked = 'button.clicked';
  static const goalCompleted = 'goal.completed';
  static const paywallOpened = 'paywall.opened';
  static const paywallClosed = 'paywall.closed';
  static const paywallUpgradeClicked = 'paywall.upgrade_clicked';
  static const paywallUpgradeCancelled = 'paywall.upgrade_cancelled';
  static const paywallProductsRequested = 'paywall.products_requested';
  static const paywallProductsLoaded = 'paywall.products_loaded';
  static const paywallProductsFailed = 'paywall.products_failed';
  static const paywallOfferEligible = 'paywall.offer_eligible';
  static const paywallPlanSelected = 'paywall.plan_selected';
  static const paywallRestoreClicked = 'paywall.restore_clicked';
  static const paywallRestoreCompleted = 'paywall.restore_completed';
  static const paywallRestoreFailed = 'paywall.restore_failed';
  static const purchaseStarted = 'purchase.started';
  static const purchaseCompleted = 'purchase.completed';
  static const purchaseFailed = 'purchase.failed';
  static const purchaseRefunded = 'purchase.refunded';
  static const trialEligible = 'trial.eligible';
  static const trialIneligible = 'trial.ineligible';
  static const trialStarted = 'trial.started';
  static const trialConverted = 'trial.converted';
  static const trialCancelled = 'trial.cancelled';
  static const trialExpired = 'trial.expired';
  static const trialBillingRetryStarted = 'trial.billing_retry_started';
  static const subscriptionStarted = 'subscription.started';
  static const subscriptionRenewed = 'subscription.renewed';
  static const subscriptionCancelled = 'subscription.cancelled';
  static const subscriptionExpired = 'subscription.expired';
  static const subscriptionBillingIssue = 'subscription.billing_issue';
  static const subscriptionGracePeriodStarted =
      'subscription.grace_period_started';
  static const subscriptionRecovered = 'subscription.recovered';
  static const subscriptionRefunded = 'subscription.refunded';
  static const subscriptionPriceIncreaseAccepted =
      'subscription.price_increase_accepted';
  static const subscriptionPriceIncreaseDeclined =
      'subscription.price_increase_declined';
  static const revenueReceived = 'revenue.received';
  static const referralSent = 'referral.sent';
  static const referralAccepted = 'referral.accepted';
  static const reviewPrompted = 'review.prompted';
  static const reviewSubmitted = 'review.submitted';
  static const notificationReceived = 'notification.received';
  static const notificationOpened = 'notification.opened';
  static const errorOccurred = 'error.occurred';
}
