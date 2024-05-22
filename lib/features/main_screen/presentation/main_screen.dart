import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print("initState function is running now");
  }

  @override
  Widget build(BuildContext context) {
    print("Build function is running");
    return Scaffold(
      appBar: AppBar(
        title: const Text("TS 5.0.2 Widget Lifecycle"),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Text("Counter wird immer um 2 erhöht"),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    print("Counter wird um 2 erhöht");
                    counter += 2;
                    print(
                        "Counter wurde um 2 erhöht und steht jetzt bei $counter");
                  });
                },
                child: Text("counter is $counter"),
              ),
              Text("Counter wird immer um 1 verringert"),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    print("Counter wird um 1 verringert");
                    counter -= 1;
                    print(
                        "Counter wurde um 1 verringert und steht jetzt bei $counter");
                  });
                },
                child: Text("counter is $counter"),
              )
            ],
          ),
        ],
      ),
    );
  }
}

dispose() {
  print("Dispose function startet");
}
