import 'package:pawfiki/models/login_state_enum.dart';

class ChangeLoginStateAction {
  final LoginStateEnum loginStateEnum;

  ChangeLoginStateAction({required this.loginStateEnum});
}
