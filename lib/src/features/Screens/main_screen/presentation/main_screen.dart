import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    debugPrint('initState() wurde aufgerufen.');
  }

  void _incrementCounter() {
    setState(() {
      counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build() wurde aufgerufen");
    return Scaffold(
      appBar: AppBar(
        title: const Text('TS 5.0.2 Widget Lifecycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Zahl: $counter',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: _incrementCounter,
              child: const Text('Klick mich'),
            ),
            ElevatedButton(onPressed: dispose, child: const Text("Beenden"))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    debugPrint('dispose() wurde aufgerufen.');
    super.dispose();
  }
}
