import 'package:educreate/models/actions/add_problem.dart';
import 'package:educreate/models/actions/increment_count.dart';
import 'package:educreate/models/app_state.dart';
import 'package:educreate/models/problem.dart';
import 'package:educreate/redux/app_reducer.dart';
import 'package:redux/redux.dart';
import 'package:test/test.dart';

void main() {
  group('Reducer', () {
    test('_incrementCount increments the count', () {
      // create a basic store with the app reducers
      final store = Store<AppState>(
        appReducer,
        initialState: AppState.init(),
      );

      expect(store.state.count, 0);

      // dispatch action to store auth state
      store.dispatch(IncrementCount());

      expect(store.state.count, 1);
    });

    test('_addProblem adds to the list', () {
      // create a basic store with the app reducers
      final store = Store<AppState>(
        appReducer,
        initialState: AppState.init(),
      );

      final problem = Problem((b) => b
        ..message = 'm'
        ..info = <String, String>{'a': 'b'}
        ..state.replace(AppState.init())
        ..trace = 'trace'
        ..type = ProblemTypeEnum.googleSignin);

      // dispatch action to add a problem
      store.dispatch(AddProblem((b) => b..problem.replace(problem)));

      // check that the store has the expected value
      expect(store.state.problems.length, 1);
      final firstProblem = store.state.problems.first;
      expect(firstProblem.message, 'm');
      expect(firstProblem.info, {'a': 'b'});
      expect(firstProblem.state, AppState.init());
      expect(firstProblem.trace, 'trace');
      expect(firstProblem.type, ProblemTypeEnum.googleSignin);
    });
  });
}
