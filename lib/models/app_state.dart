import 'package:flutter/material.dart';
import 'package:pawfiki/models/comment_details.dart';
import 'package:pawfiki/models/feed.dart';
import 'package:pawfiki/models/login_state_enum.dart';
import 'package:pawfiki/models/post_details.dart';
import 'package:pawfiki/models/user.dart';

class AppState {
  final User? user;
  final ThemeMode appTheme;
  final Feed feed;
  final int bottomNavigationBarIndex;
  final LoginStateEnum loginState;
  final bool isTermsAccepted;
  final List<PostDetails> userPosts;
  final List<CommentDetails> commentReplies;

  AppState({
    this.user,
    required this.appTheme,
    required this.feed,
    required this.bottomNavigationBarIndex,
    required this.loginState,
    required this.isTermsAccepted,
    required this.userPosts,
    required this.commentReplies,
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
    userPosts: [],
    commentReplies: [],
  );

  AppState copyWith({
    User? user,
    ThemeMode? appTheme,
    Feed? feed,
    int? bottomNavigationBarIndex,
    LoginStateEnum? loginState,
    bool? isTermsAccepted,
    List<PostDetails>? userPosts,
    List<CommentDetails>? commentReplies,
  }) {
    return AppState(
      user: user ?? this.user,
      appTheme: appTheme ?? this.appTheme,
      feed: feed ?? this.feed,
      bottomNavigationBarIndex:
          bottomNavigationBarIndex ?? this.bottomNavigationBarIndex,
      loginState: loginState ?? this.loginState,
      isTermsAccepted: isTermsAccepted ?? this.isTermsAccepted,
      userPosts: userPosts ?? this.userPosts,
      commentReplies: commentReplies ?? this.commentReplies,
    );
  }
}
