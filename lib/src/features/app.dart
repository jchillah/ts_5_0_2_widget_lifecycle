import 'package:flutter/material.dart';
import 'package:ts_5_0_2_widget_lifecycle/src/features/Screens/main_screen/presentation/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainScreen());
  }
}
