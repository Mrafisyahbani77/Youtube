import 'package:belajar_test/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  RafiApp app = const RafiApp();

  runApp(app);
}

class RafiApp extends StatelessWidget {
  const RafiApp({super.key});

  @override
  Widget build(BuildContext context) {
    MainPage mainpage = const MainPage();
    MaterialApp materialApp = MaterialApp(
      home: mainpage,
    );

    return materialApp;
  }
}
