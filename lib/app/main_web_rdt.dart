import 'package:educreate/app/app.dart';
import 'package:educreate/models/app_state.dart';
import 'package:educreate/redux/app_reducer.dart';
import 'package:educreate/utils/ips.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_remote_devtools/redux_remote_devtools.dart';

void main() async {
  final remoteDevtools = RemoteDevToolsMiddleware(home18);

  final store = Store<AppState>(
    appReducer,
    initialState: AppState.init(),
  );

  remoteDevtools.store = store;

  try {
    await remoteDevtools.connect();
  } catch (e) {
    print(e);
  }

  runApp(MyApp(store));
}
