import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/models/app_state.dart';

class UserPostsScreen extends StatelessWidget {
  const UserPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (BuildContext context, store) {
        AppState state = store.state;
        return Scaffold(
          appBar: AppBar(title: Text("Your posts")),
          body:
              state.userPosts.isNotEmpty
                  ? Column()
                  : Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        "You haven't posted anything yet! 😸",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
        );
      },
    );
  }
}
