import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: UniqueKey(),

            onPressed: () {
              counter++;

              setState(() {});
            },
            child: const Icon(Icons.plus_one),
          ),
          FloatingActionButton(
            heroTag: UniqueKey(),

            onPressed: () {
              counter--;

              setState(() {});
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          FloatingActionButton(
            heroTag: UniqueKey(),
            onPressed: () {
              counter = 0;

              setState(() {});
            },
            child: const Icon(Icons.restore_page),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('$counter', style: TextStyle(fontSize: 103.00)),
            Text(
              'click${(counter >= 2 || counter == 0) ? 's' : ''}',
              style: TextStyle(fontSize: 40.00),
            ),
          ],
        ),
      ),
    );
  }
}
