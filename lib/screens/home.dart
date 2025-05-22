import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/actions/change_bottom_nav_index_action.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/screens/general_feed.dart';
import 'package:pawfiki/screens/new_post.dart';
import 'package:pawfiki/screens/user_profile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (context, store) {
        AppState state = store.state;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Center(
              child: Text(
                state.bottomNavigationBarIndex == 0
                    ? "General Feed"
                    : state.bottomNavigationBarIndex == 1
                    ? "Add Post"
                    : "User Profile",
              ),
            ),
          ),
          body:
              <Widget>[
                const GeneralFeed(),
                const NewPost(),
                const UserProfile(),
              ][state.bottomNavigationBarIndex],
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              store.dispatch(ChangeBottomNavIndexAction(bottomNavIndex: index));
            },
            selectedIndex: state.bottomNavigationBarIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: "Feed",
              ),
              NavigationDestination(icon: Icon(Icons.add), label: "New Post"),
              NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        );
      },
    );
  }
}
