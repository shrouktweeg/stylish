import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/netwoking/api_interceptors.dart';
import 'package:stylish/core/routing/app_router.dart';
import 'package:stylish/core/utils/app_theme.dart';

import 'core/routing/app_routes.dart';
import 'core/service/get_it_service.dart';
import 'features/on_boarding/presentation/data/service/on_boarding_services.dart';
import 'generated/l10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await OnBoardingServices.initializeSharedPreferencesInstance();
   setupServiceLocator();
  runApp(const StylishApp());
}

class StylishApp extends StatefulWidget {
  const StylishApp({super.key});

  @override
  State<StylishApp> createState() => _StylishAppState();
}

class _StylishAppState extends State<StylishApp> {
  late StreamSubscription<AuthEvent>_authSubscription;
  @override
  void initState() {
    _authSubscription=AuthEventBus.instance.stream.listen((event){
      if(event==AuthEvent.logOut){
        AppRouter.goRouter.go(AppRoutes.login);
      }
    });
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        locale: const Locale('en'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        title: 'Stylish',
        theme: AppTheme.getLightTheme,
        routerConfig: AppRouter.goRouter,
      ),
    );
  }
}


