import 'package:pawfiki/actions/index.dart';
import 'package:pawfiki/models/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is ChangeBottomNavIndexAction) {
    return state.copyWith(bottomNavigationBarIndex: action.bottomNavIndex);
  }
  return state;
}
