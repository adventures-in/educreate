import 'package:educreate/models/actions/add_problem.dart';
import 'package:educreate/models/actions/increment_count.dart';
import 'package:educreate/models/app_state.dart';
import 'package:redux/redux.dart';

/// Reducers change the app state in response to actions sent to the store.
///
/// Each reducer returns a new [AppState].
final appReducer = combineReducers<AppState>([
  // general
  TypedReducer<AppState, AddProblem>(_addProblem),
  // counter
  TypedReducer<AppState, IncrementCount>(_incrementCount),
]);

AppState _addProblem(AppState state, AddProblem action) {
  return state.rebuild((b) => b..problems.add(action.problem));
}

AppState _incrementCount(AppState state, IncrementCount action) {
  return state.rebuild((b) => b..count = state.count + 1);
}
