import "package:flutter/material.dart";
import 'package:flutter_on_the_go/config/ioc_container.dart';
import "package:flutter_on_the_go/redux/app_state.dart";
import 'package:flutter_on_the_go/screens/home/home_view.dart';
import "package:flutter_redux/flutter_redux.dart";
import "package:redux/redux.dart";

import "redux/create_store.dart";


void main() {
  final store = createStore();
  setupContainer();
  runApp(MyApp(store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: "Flutter Folder Structure",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeView(),
      ),
    );
  }
}