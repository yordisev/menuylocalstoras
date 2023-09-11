import 'package:flutter/material.dart';
import 'package:menuylocalstoras/widgets/menu.dart';

class AjustesScreen extends StatelessWidget {
  static const String routerName = 'ajustes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajustes')),
      drawer: MenuScreen(),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
