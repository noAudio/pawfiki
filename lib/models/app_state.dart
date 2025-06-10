import 'package:flutter/material.dart';
import 'package:pawfiki/models/feed.dart';
import 'package:pawfiki/models/login_state_enum.dart';
import 'package:pawfiki/models/user.dart';

class AppState {
  final User? user;
  final ThemeMode appTheme;
  final Feed feed;
  final int bottomNavigationBarIndex;
  final LoginStateEnum loginState;
  final bool isTermsAccepted;

  AppState({
    this.user,
    required this.appTheme,
    required this.feed,
    required this.bottomNavigationBarIndex,
    required this.loginState,
    required this.isTermsAccepted,
  });

  factory AppState.initial() => AppState(
    user: null,
    appTheme: ThemeMode.system,
    feed: Feed(
      globalFeed: [
        {0: ""},
      ],
    ),
    bottomNavigationBarIndex: 0,
    loginState: LoginStateEnum.signIn,
    isTermsAccepted: false,
  );

  AppState copyWith({
    User? user,
    ThemeMode? appTheme,
    Feed? feed,
    int? bottomNavigationBarIndex,
    LoginStateEnum? loginState,
    bool? isTermsAccepted,
  }) {
    return AppState(
      user: user ?? this.user,
      appTheme: appTheme ?? this.appTheme,
      feed: feed ?? this.feed,
      bottomNavigationBarIndex:
          bottomNavigationBarIndex ?? this.bottomNavigationBarIndex,
      loginState: loginState ?? this.loginState,
      isTermsAccepted: isTermsAccepted ?? this.isTermsAccepted,
    );
  }
}
