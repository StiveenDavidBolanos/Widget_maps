import 'package:flutter/material.dart';
import 'package:maps_testing/presentation/screens/vendedores_maps_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: VendedoresMapsScreen());
  }
}
