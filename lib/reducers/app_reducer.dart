import 'package:pawfiki/actions/change_login_state_action.dart';
import 'package:pawfiki/actions/index.dart';
import 'package:pawfiki/models/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ChangeBottomNavIndexAction) {
    return state.copyWith(bottomNavigationBarIndex: action.bottomNavIndex);
  } else if (action is ChangeLoginStateAction) {
    return state.copyWith(loginState: action.loginStateEnum);
  }
  return state;
}
