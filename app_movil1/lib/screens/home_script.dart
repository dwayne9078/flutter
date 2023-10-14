import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import './otro_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  cambiarPagina(ctx) {
    return Navigator.push(
        ctx,
        PageTransition(
            child: const Otro(), type: PageTransitionType.rightToLeft));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text(
        //   'Menu Principal',
        //   style: TextStyle(fontSize: 25, color: Colors.black),
        // ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Halloween',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            Row(children: [
              IconButton(
                  onPressed: () {
                    const snack = SnackBar(
                      content: Text(
                        "Cuidate que esta sera la peor noche de tu vida...",
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  },
                  icon: const Icon(Icons.notification_add_outlined)),
              IconButton(
                  onPressed: () {
                    cambiarPagina(context);
                  },
                  icon: const Icon(Icons.add_circle))
            ]),
          ],
        ),
      ),
      body: const Center(
          child: Text("Welcome to Halloween!",
              style: TextStyle(fontSize: 25, color: Colors.black))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cambiarPagina(context);
        },
        tooltip: "Boton Flotante",
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
