import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int miNumero = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[100],
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.green[100],
      ),

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Esto es un widget sin estado"),
        ),
        body: Center(
          child: Text("$miNumero")
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              miNumero++;
            });
          },
          child: const Icon(Icons.add),
        ),
      )
    );
  }
}
