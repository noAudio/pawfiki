import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:pawfiki/components/login_component.dart';
import 'package:pawfiki/components/sign_up_component.dart';
import 'package:pawfiki/models/app_state.dart';
import 'package:pawfiki/models/login_state_enum.dart';

class UserAuthScreen extends StatelessWidget {
  const UserAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store,
      builder: (context, store) {
        AppState state = store.state;

        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                      state.loginState == LoginStateEnum.signIn
                          ? const LoginComponent()
                          : const SignUpComponent(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
