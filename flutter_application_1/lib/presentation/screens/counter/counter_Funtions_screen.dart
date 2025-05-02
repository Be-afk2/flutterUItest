import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador funciones'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
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
