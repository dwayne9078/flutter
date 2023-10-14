import 'package:flutter/material.dart';

class Otro extends StatelessWidget {
  const Otro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("OTRA PAGINA")),
      ),
      body: const Center(
        child: Text(
          'Esto es otra pagina de Halloween 1',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
