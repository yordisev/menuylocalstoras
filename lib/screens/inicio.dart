import 'package:flutter/material.dart';
import 'package:menuylocalstoras/widgets/menu.dart';

class InicioScreen extends StatelessWidget {
  static const String routerName = 'inicio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      drawer: MenuScreen(),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
