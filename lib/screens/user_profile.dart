import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/actions/index.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/screens/comment_replies_screen.dart';
import 'package:pawfiki/screens/edit_profile_screen.dart';
import 'package:pawfiki/screens/user_posts_screen.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (BuildContext context, store) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text("Email:"),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              readOnly: true,
                              initialValue: "user@email.com",
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Username:"),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              readOnly: true,
                              initialValue: "@username",
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Theme.of(context).colorScheme.primary,
                  hoverColor: Theme.of(context).colorScheme.primary,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfileScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person),
                            SizedBox(width: 10),
                            Text("Edit profile details"),
                          ],
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Theme.of(context).colorScheme.primary,
                  hoverColor: Theme.of(context).colorScheme.primary,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserPostsScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.newspaper),
                            SizedBox(width: 10),
                            Text("Posts"),
                          ],
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Theme.of(context).colorScheme.primary,
                  hoverColor: Theme.of(context).colorScheme.primary,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CommentRepliesScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.notifications),
                            SizedBox(width: 10),
                            Text("Comment replies"),
                          ],
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              splashColor: Theme.of(context).colorScheme.error,
              // hoverColor: Theme.of(context).colorScheme.error,
              onTap: () {
                store.dispatch(ResetStateAction());
              },
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Log out",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
