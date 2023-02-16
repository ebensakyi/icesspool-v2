import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/auth-page/bindings/auth_page_binding.dart';
import '../modules/auth-page/views/auth_page_view.dart';
import '../modules/auth-page/views/login_page_view.dart';
import '../modules/auth-page/views/otp_page_view.dart';
import '../modules/auth-page/views/register_regular_user_page_view.dart';
import '../modules/auth-page/views/register_selection_page_view.dart';
import '../modules/auth-page/views/register_service_provider_page_view.dart';
import '../modules/client-landing-page/bindings/client_binding.dart';
import '../modules/client-landing-page/views/client_landing_page_view.dart';
import '../modules/help-page/bindings/help_page_binding.dart';
import '../modules/help-page/views/help_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landing-page/bindings/landing_page_binding.dart';
import '../modules/landing-page/views/landing_page_view.dart';
import '../modules/make-request-page/bindings/make_request_page_binding.dart';
import '../modules/make-request-page/request-status-page/bindings/request_status_page_binding.dart';
import '../modules/make-request-page/request-status-page/views/request_status_page_view.dart';
import '../modules/make-request-page/views/make_request_page_view.dart';
import '../modules/onboarding-page/bindings/onboarding_page_binding.dart';
import '../modules/onboarding-page/views/onboarding_page_view.dart';
import '../modules/region-selection-page/bindings/region_selection_page_binding.dart';
import '../modules/region-selection-page/views/region_selection_page_view.dart';
import '../modules/service-provider-landing-page/bindings/service_provider_landing_page_binding.dart';
import '../modules/service-provider-landing-page/views/service_provider_landing_page_view.dart';

import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/transaction-history-page/bindings/transaction_history_page_binding.dart';
import '../modules/transaction-history-page/views/transaction_history_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTH_PAGE;
  static const INITIAL1 = Routes.CLIENT_LANDING_PAGE;
  static const INITIAL2 = Routes.SERVICE_PROVIDER_LANDING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING_PAGE,
      page: () => OnboardingPageView(),
      binding: OnboardingPageBinding(),
    ),
    GetPage(
      name: _Paths.REGION_SELECTION_PAGE,
      page: () => RegionSelectionPageView(),
      binding: RegionSelectionPageBinding(),
    ),
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_PAGE,
      page: () => AuthPageView(),
      binding: AuthPageBinding(),
    ),
    GetPage(
      name: _Paths.MAKE_REQUEST_PAGE,
      page: () => MakeRequestView(),
      binding: MakeRequestPageBinding(),
      children: [
        GetPage(
          name: _Paths.REQUEST_STATUS_PAGE,
          page: () => const RequestStatusPageView(),
          binding: RequestStatusPageBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.TRANSACTION_HISTORY_PAGE,
      page: () => TransactionHistoryView(),
      binding: TransactionHistoryBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: AuthPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SELECTION_PAGE,
      page: () => RegisterSelectionPageView(),
      binding: AuthPageBinding(),
    ),
    GetPage(
      name: _Paths.HELP_PAGE,
      page: () => const HelpPageView(),
      binding: HelpPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_REGULAR_USER_PAGE,
      page: () => RegisterRegularUserPageView(),
      binding: AuthPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_SERVICE_PROVIDER_PAGE,
      page: () => const RegisterServiceProviderPageView(),
      binding: AuthPageBinding(),
    ),
    GetPage(
      name: _Paths.OTP_PAGE,
      page: () => const OtpPageView(),
      binding: AuthPageBinding(),
    ),
    GetPage(
      name: _Paths.CLIENT_LANDING_PAGE,
      page: () => const ClientLandingPageView(),
      binding: ClientBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE_PROVIDER_LANDING_PAGE,
      page: () => const ServiceProviderLandingPageView(),
      binding: ServiceProviderLandingPageBinding(),
    ),
  ];
}
