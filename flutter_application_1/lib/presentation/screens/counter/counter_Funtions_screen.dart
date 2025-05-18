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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BotonFlotante(
            icono: Icons.plus_one,
            onPressed: () {
              setState(() {
                counter++;
              });
            },
          ),
          SizedBox(height: 20, width: 20),
          BotonFlotante(
            icono: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if (counter == 0) return;
                counter--;
              });
            },
          ),
          SizedBox(height: 20, width: 20),
          BotonFlotante(
            icono: Icons.restore_page,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
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

class BotonFlotante extends StatelessWidget {
  final IconData icono;

  final VoidCallback? onPressed;
  const BotonFlotante({super.key, required this.icono, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: UniqueKey(),
      enableFeedback: false,
      onPressed: onPressed,
      child: Icon(icono),
    );
  }
}
