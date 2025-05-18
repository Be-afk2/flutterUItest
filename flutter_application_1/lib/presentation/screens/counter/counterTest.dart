import 'package:flutter/material.dart';

List<Map<String, dynamic>> dummyList = [
  {'title': 'Texto 1', 'color': Colors.red},
  {'title': 'Texto 2', 'color': Colors.green},
  {'title': 'Texto 3', 'color': Colors.blue},
  {'title': 'Texto 4', 'color': Colors.orange},
  {'title': 'Texto 5', 'color': Colors.purple},
  {'title': 'Texto 6', 'color': Colors.yellow},
  {'title': 'Texto 7', 'color': Colors.teal},
  {'title': 'Texto 8', 'color': Colors.cyan},
  {'title': 'Texto 9', 'color': Colors.pink},
  {'title': 'Texto 10', 'color': Colors.indigo},
  {'title': 'Texto 11', 'color': Colors.lime},
  {'title': 'Texto 12', 'color': Colors.amber},
  {'title': 'Texto 13', 'color': Colors.deepOrange},
  {'title': 'Texto 14', 'color': Colors.deepPurple},
  {'title': 'Texto 15', 'color': Colors.lightGreen},
  {'title': 'Texto 16', 'color': Colors.lightBlue},
  {'title': 'Texto 17', 'color': Colors.brown},
  {'title': 'Texto 18', 'color': Colors.grey},
  {'title': 'Texto 19', 'color': Colors.blueGrey},
  {'title': 'Texto 20', 'color': Colors.black},
];

class CounterTest extends StatefulWidget {
  const CounterTest({super.key});

  @override
  State<CounterTest> createState() => _CounterTestState();
}

class _CounterTestState extends State<CounterTest> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: GridTest(),
    );
  }
}

class GridTest extends StatelessWidget {
  const GridTest({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      addAutomaticKeepAlives: false,

      crossAxisCount: 3,
      children:
          dummyList
              .map((item) => Item(title: item['title'], color: item['color']))
              .toList(),

      // children: const <Widget>[
    );
  }
}

class Item extends StatelessWidget {
  final String title;
  final Color color;
  const Item({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: color,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [Icon(Icons.abc, size: 50), Text(title)]),
      ),
    );
  }
}
