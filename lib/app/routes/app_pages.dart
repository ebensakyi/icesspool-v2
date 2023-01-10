import 'package:get/get.dart';

import '../modules/auth-page/bindings/auth_page_binding.dart';
import '../modules/auth-page/views/auth_page_view.dart';
import '../modules/auth-page/views/login_page_view.dart';
import '../modules/auth-page/views/otp_page_view.dart';
import '../modules/auth-page/views/register_regular_user_page_view.dart';
import '../modules/auth-page/views/register_selection_page_view.dart';
import '../modules/auth-page/views/register_service_provider_page_view.dart';
import '../modules/client/bindings/client_binding.dart';
import '../modules/client/views/client_view.dart';
import '../modules/help-page/bindings/help_page_binding.dart';
import '../modules/help-page/views/help_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landing-page/bindings/landing_page_binding.dart';
import '../modules/landing-page/views/landing_page_view.dart';
import '../modules/launch-page/bindings/launch_page_binding.dart';
import '../modules/launch-page/views/launch_page_view.dart';
import '../modules/client/make-request-page/bindings/make_request_page_binding.dart';
import '../modules/client/make-request-page/request-status-page/bindings/request_status_page_binding.dart';
import '../modules/client/make-request-page/request-status-page/views/request_status_page_view.dart';
import '../modules/client/make-request-page/views/make_request_page_view.dart';
import '../modules/onboarding-page/bindings/onboarding_page_binding.dart';
import '../modules/onboarding-page/views/onboarding_page_view.dart';
import '../modules/region-selection-page/bindings/region_selection_page_binding.dart';
import '../modules/region-selection-page/views/region_selection_page_view.dart';
import '../modules/service-provider/bindings/service_provider_binding.dart';
import '../modules/service-provider/views/service_provider_view.dart';
import '../modules/client/transaction-history-page/bindings/transaction_history_page_binding.dart';
import '../modules/client/transaction-history-page/views/transaction_history_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTH_PAGE;

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
      page: () => MakeRequestPageView(),
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
      page: () => TransactionHistoryPageView(),
      binding: TransactionHistoryPageBinding(),
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
      page: () => const RegisterRegularUserPageView(),
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
      name: _Paths.SERVICE_PROVIDER,
      page: () => const ServiceProviderView(),
      binding: ServiceProviderBinding(),
    ),
    GetPage(
      name: _Paths.CLIENT,
      page: () => const ClientView(),
      binding: ClientBinding(),
    ),
  ];
}
