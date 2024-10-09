// File: lib/routes/app_pages.dart
import 'package:get/get.dart';
import '../screens/auth/welcome_screen.dart';
import '../screens/auth/signin_screen.dart';
import '../screens/auth/signup_screen.dart';
import '../screens/auth/phone_verification_screen.dart';
import '../screens/auth/otp_verification_screen.dart';
import '../screens/auth/reset_password_screen.dart';
import '../screens/dashboard/dashboard_screen.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.WELCOME,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: Routes.PHONE_VERIFICATION,
      page: () => const PhoneVerificationScreen(),
    ),
    GetPage(
      name: Routes.OTP_VERIFICATION,
      page: () => const OTPVerificationScreen(),
    ),
    GetPage(
      name: Routes.RESET_PASSWORD,
      page: () => const ResetPasswordScreen(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => const DashboardScreen(),
    ),
  ];
}

abstract class Routes {
  static const WELCOME = '/welcome';
  static const SIGNIN = '/signin';
  static const SIGNUP = '/signup';
  static const PHONE_VERIFICATION = '/phone-verification';
  static const OTP_VERIFICATION = '/otp-verification';
  static const RESET_PASSWORD = '/reset-password';
  static const DASHBOARD = '/dashboard';
  static const HOME = '/home'; // Tambahkan ini
}
