import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/models/app_state.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (BuildContext context, store) {
        AppState state = store.state;
        return Scaffold(
          appBar: AppBar(title: Text("Edit your profile")),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Email, username and password"),
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: state.user!.username,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: state.user!.email),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: state.user!.password,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
