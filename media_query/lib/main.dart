import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final miObjetoMQ = MediaQuery.of(context);
    final orientacion = miObjetoMQ.orientation;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          // child: Text('Hola mundo', style: TextStyle(fontSize: 16 * miObjetoMQ.devicePixelRatio),),
          child: Center(
            child: orientacion == Orientation.portrait
            ? const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hola, estoy en modo Portrait"),
                Icon(Icons.arrow_downward)
              ],
            )
            : const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hola, estoy en modo Landscape"),
                Icon(Icons.arrow_right)
              ],
            )
          ),
        ),
      );
  }
}