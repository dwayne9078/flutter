import 'package:flutter/material.dart';
import './screens/home_script.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // Constructor de la aplicacion
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.emilysCandyTextTheme(),
        scaffoldBackgroundColor: Colors.orange[100]
      ),
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen()
    );
  }
}