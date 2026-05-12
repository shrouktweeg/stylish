import 'package:go_router/go_router.dart';
import 'package:stylish/core/routing/app_routes.dart';
import 'package:stylish/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:stylish/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static final goRouter=GoRouter(routes: [
    GoRoute(path: AppRoutes.splashView,name: AppRoutes.splashView,builder: (context,state)=>SplashView()),
    GoRoute(path: AppRoutes.onBoarding,name: AppRoutes.onBoarding,builder: (context,state)=>OnBoardingView()),
  ]);
}