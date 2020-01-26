import 'package:flutter/material.dart';
import 'package:flutter_on_the_go/redux/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController _numberInputController;

  @override
  void initState() {
    super.initState();
    _numberInputController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeViewModel>(
      converter: (store) => HomeViewModel.fromStore(store),
      builder: (BuildContext context, HomeViewModel viewModel) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Fact of Numbers"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final number = int.tryParse(_numberInputController.text);
              if (number != null) {
                viewModel.getFactOfNumber(number);
              }
            },
            child: Icon(Icons.autorenew),
          ),
          body: SafeArea(
              child: Column(
            children: <Widget>[
              TextField(
                controller: _numberInputController,
                decoration: const InputDecoration(
                  hintText: "Enter a number...",
                ),
              ),
              Center(
                child: Text(
                  viewModel.fact,
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            ],
          )),
        );
      },
      onInitialBuild: (HomeViewModel viewModel) {
        //
      },
    );
  }
}
