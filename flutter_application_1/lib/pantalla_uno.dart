import 'package:flutter/material.dart';

// componente estatico y dinamico
//StatefulWidget es un widget que tiene un estado mutable, lo que significa que puede cambiar
// durante la vida útil del widget. Por otro lado, StatelessWidget es un widget que no tiene estado
//mutable, lo que significa que su contenido no puede cambiar una vez que se ha construido.

class MyHomePage extends StatefulWidget {
  final String title;
  final String name;
  const MyHomePage({super.key, required this.title, this.name = 'benja'});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// class _micomponente extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Text('Hola mundo');
//   }
// }

// codigo de body
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
