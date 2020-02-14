import 'package:educreate/models/app_state.dart';
import 'package:educreate/redux/app_reducer.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

import 'app.dart';

void main() {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.init(),
  );

  runApp(MyApp(store));
}
