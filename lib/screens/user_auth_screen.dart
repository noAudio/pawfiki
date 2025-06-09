import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/models/app_state.dart';

class UserAuthScreen extends StatelessWidget {
  const UserAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (context, store) {
        AppState state = store.state;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //   TODO: Swap with Logo
            const Text("PAWFIKI LOGO"),
          //   
          ],
        );
      },
    );
  }
}
