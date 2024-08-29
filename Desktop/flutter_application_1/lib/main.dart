import 'package:flutter/material.dart';
import 'package:flutter_application_1/di/Service_locator.dart';
import 'package:flutter_application_1/view/view_model/Coinlist_viewmodel.dart';

void main() {
  initServiceLocator();
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoinListViewmodel(),
    );
  }
}
