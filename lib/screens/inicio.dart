import 'package:flutter/material.dart';
import 'package:menuylocalstoras/shared_preferen/preferencias.dart';
import 'package:menuylocalstoras/widgets/menu.dart';

class InicioScreen extends StatelessWidget {
  static const String routerName = 'inicio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      drawer: MenuScreen(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Modo Oscuro :${Preferencias.modooscuro}'),
          Divider(),
          Text('Genero :${Preferencias.genero}'),
          Divider(),
          Text('Nombre del Usuario :${Preferencias.nombre}'),
          Divider(),
        ],
      ),
    );
  }
}
