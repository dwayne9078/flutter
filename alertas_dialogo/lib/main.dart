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
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: const FlutterLogo(),
                  applicationName: "Mi aplicacion en Flutter",
                  applicationVersion: "1.0.0",
                  );
              }, child: const Text("Boton sobre información de la App")),
              ElevatedButton(onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return  AlertDialog(
                      title: const Text("Alerta"),
                      content: const Text("Hola soy una alerta en Flutter"),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: const Text("Cancelar")),
                        TextButton(onPressed: () {
                          // Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const AlertDialog(
                            title: Text("HAS PRESIONADO ACEPTAR"),
                          );
                            });
                        }, child: const Text("Aceptar"))
                      ],
                    );
                  });
              }, child: const Text("Boton de Alert Dialog")),
              ElevatedButton(onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("MI VENTANA DE DIALOGO"),
                            const SizedBox(height: 15,),
                            TextButton(onPressed: () {
                              Navigator.pop(context);
                            }, child: const Text("Cerrar"))
                          ],
                        ),
                        ),
                    );
                  });
              }, child: const Text("Boton de Dialog"))
            ]),
        ),
      );
  }
}