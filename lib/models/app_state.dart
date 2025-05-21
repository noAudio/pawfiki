import 'package:flutter/material.dart';
import 'package:pawfiki/models/feed.dart';
import 'package:pawfiki/models/user.dart';

class AppState {
  User user;
  ThemeMode appTheme;
  Feed feed;

  AppState({required this.user, required this.appTheme, required this.feed});

  factory AppState.initial() => AppState(
    user: User(username: ''),
    appTheme: ThemeMode.system,
    feed: Feed(
      globalFeed: [
        {0: ""},
      ],
    ),
  );
}
