import 'package:pawfiki/actions/index.dart';
import 'package:pawfiki/models/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ChangeBottomNavIndexAction) {
    return state.copyWith(bottomNavigationBarIndex: action.bottomNavIndex);
  } else if (action is ChangeLoginStateAction) {
    return state.copyWith(loginState: action.loginStateEnum);
  } else if (action is ChangeTermsAccepted) {
    return state.copyWith(isTermsAccepted: action.isTermsAccepted);
  }
  return state;
}
