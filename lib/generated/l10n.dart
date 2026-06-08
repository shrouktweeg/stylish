// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Stylish`
  String get stylish {
    return Intl.message('Stylish', name: 'stylish', desc: '', args: []);
  }

  /// `Choose Products`
  String get ChooseProducts {
    return Intl.message(
      'Choose Products',
      name: 'ChooseProducts',
      desc: '',
      args: [],
    );
  }

  /// `Make Payment`
  String get MakePayment {
    return Intl.message(
      'Make Payment',
      name: 'MakePayment',
      desc: '',
      args: [],
    );
  }

  /// `Get Your Order`
  String get GetYourOrder {
    return Intl.message(
      'Get Your Order',
      name: 'GetYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.`
  String get onBoardingDescription {
    return Intl.message(
      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      name: 'onBoardingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip {
    return Intl.message('Skip', name: 'Skip', desc: '', args: []);
  }

  /// `Prev`
  String get Prev {
    return Intl.message('Prev', name: 'Prev', desc: '', args: []);
  }

  /// `Next`
  String get Next {
    return Intl.message('Next', name: 'Next', desc: '', args: []);
  }

  /// `Get Started`
  String get GetStarted {
    return Intl.message('Get Started', name: 'GetStarted', desc: '', args: []);
  }

  /// `Welcome Back!`
  String get WelcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'WelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get Username {
    return Intl.message('Username', name: 'Username', desc: '', args: []);
  }

  /// `Email`
  String get Email {
    return Intl.message('Email', name: 'Email', desc: '', args: []);
  }

  /// `Password`
  String get Password {
    return Intl.message('Password', name: 'Password', desc: '', args: []);
  }

  /// `Forgot Password?`
  String get ForgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'ForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get Login {
    return Intl.message('Login', name: 'Login', desc: '', args: []);
  }

  /// `OR Continue with`
  String get ORContinueWith {
    return Intl.message(
      'OR Continue with',
      name: 'ORContinueWith',
      desc: '',
      args: [],
    );
  }

  /// `Create An Account`
  String get CreateAnAccount {
    return Intl.message(
      'Create An Account',
      name: 'CreateAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message('Sign Up', name: 'SignUp', desc: '', args: []);
  }

  /// `ConfirmPassword`
  String get ConfirmPassword {
    return Intl.message(
      'ConfirmPassword',
      name: 'ConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `By clicking the `
  String get ByClickingThe {
    return Intl.message(
      'By clicking the ',
      name: 'ByClickingThe',
      desc: '',
      args: [],
    );
  }

  /// `Register `
  String get Register {
    return Intl.message('Register ', name: 'Register', desc: '', args: []);
  }

  /// ` button, you agree to the public offer`
  String get buttonYouAgreeToThePublicOffer {
    return Intl.message(
      ' button, you agree to the public offer',
      name: 'buttonYouAgreeToThePublicOffer',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Create Account' key

  /// `I Already Have an Account`
  String get IAlreadyHaveAnAccount {
    return Intl.message(
      'I Already Have an Account',
      name: 'IAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'ForgotPassword?' key

  /// `Enter your email address`
  String get EnterYourEmailAddress {
    return Intl.message(
      'Enter your email address',
      name: 'EnterYourEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `* We will send you a message to set or reset your new password`
  String get forgotPasswordDescription {
    return Intl.message(
      '* We will send you a message to set or reset your new password',
      name: 'forgotPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get Submit {
    return Intl.message('Submit', name: 'Submit', desc: '', args: []);
  }

  /// `You want Authentic, here you go!`
  String get YouWantAuthenticHereYouGo {
    return Intl.message(
      'You want Authentic, here you go!',
      name: 'YouWantAuthenticHereYouGo',
      desc: '',
      args: [],
    );
  }

  /// `Find it here, buy it now!`
  String get FindItHereBuyItNow {
    return Intl.message(
      'Find it here, buy it now!',
      name: 'FindItHereBuyItNow',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message('Home', name: 'Home', desc: '', args: []);
  }

  /// `WishList`
  String get WishList {
    return Intl.message('WishList', name: 'WishList', desc: '', args: []);
  }

  /// `Search`
  String get Search {
    return Intl.message('Search', name: 'Search', desc: '', args: []);
  }

  /// `Setting`
  String get Setting {
    return Intl.message('Setting', name: 'Setting', desc: '', args: []);
  }

  /// `Search any Product..`
  String get SearchAnyProduct {
    return Intl.message(
      'Search any Product..',
      name: 'SearchAnyProduct',
      desc: '',
      args: [],
    );
  }

  /// `All Featured`
  String get AllFeatured {
    return Intl.message(
      'All Featured',
      name: 'AllFeatured',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get Sort {
    return Intl.message('Sort', name: 'Sort', desc: '', args: []);
  }

  /// `Filter`
  String get Filter {
    return Intl.message('Filter', name: 'Filter', desc: '', args: []);
  }

  /// `Beauty`
  String get Beauty {
    return Intl.message('Beauty', name: 'Beauty', desc: '', args: []);
  }

  /// `Fashion`
  String get Fashion {
    return Intl.message('Fashion', name: 'Fashion', desc: '', args: []);
  }

  /// `Kids`
  String get Kids {
    return Intl.message('Kids', name: 'Kids', desc: '', args: []);
  }

  /// `Mens`
  String get Mens {
    return Intl.message('Mens', name: 'Mens', desc: '', args: []);
  }

  /// `Women`
  String get Women {
    return Intl.message('Women', name: 'Women', desc: '', args: []);
  }

  /// `50-40% OFF`
  String get Discount {
    return Intl.message('50-40% OFF', name: 'Discount', desc: '', args: []);
  }

  /// `Now in (product)`
  String get NowInProduct {
    return Intl.message(
      'Now in (product)',
      name: 'NowInProduct',
      desc: '',
      args: [],
    );
  }

  /// `All colors`
  String get AllColors {
    return Intl.message('All colors', name: 'AllColors', desc: '', args: []);
  }

  /// `Shop Now`
  String get ShopNow {
    return Intl.message('Shop Now', name: 'ShopNow', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
