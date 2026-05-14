import 'package:go_router/go_router.dart';
import 'package:stylish/core/routing/app_routes.dart';
import 'package:stylish/features/auth/presentation/views/forgot_pass_view.dart';
import 'package:stylish/features/auth/presentation/views/login_view.dart';
import 'package:stylish/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:stylish/features/splash/presentation/views/splash_view.dart';

import '../../features/auth/presentation/views/signup_view.dart';

abstract class AppRouter{
  static final goRouter=GoRouter(routes: [
    GoRoute(path: AppRoutes.splashView,name: AppRoutes.splashView,builder: (context,state)=>SplashView()),
    GoRoute(path: AppRoutes.onBoarding,name: AppRoutes.onBoarding,builder: (context,state)=>OnBoardingView()),
    GoRoute(path: AppRoutes.login,name: AppRoutes.login,builder: (context,state)=>LoginView()),
    GoRoute(path: AppRoutes.signUp,name: AppRoutes.signUp,builder: (context,state)=>SignupView()),
    GoRoute(path: AppRoutes.forgotPass,name: AppRoutes.forgotPass,builder: (context,state)=>ForgotPassView()),
  ]);
}