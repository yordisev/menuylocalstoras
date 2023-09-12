import 'package:flutter/material.dart';
import 'package:menuylocalstoras/providers/cambiartema.dart';
import 'package:menuylocalstoras/shared_preferen/preferencias.dart';
import 'package:menuylocalstoras/widgets/menu.dart';
import 'package:provider/provider.dart';

class AjustesScreen extends StatefulWidget {
  static const String routerName = 'ajustes';

  @override
  State<AjustesScreen> createState() => _AjustesScreenState();
}

class _AjustesScreenState extends State<AjustesScreen> {
  // bool modooscuro = false;
  // int genero = 1;
  // String nombre = 'Yordis';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajustes')),
      drawer: MenuScreen(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              Divider(),
              SwitchListTile(
                value: Preferencias.modooscuro,
                title: Text('Modo Oscuro'),
                onChanged: (value) {
                  Preferencias.modooscuro = value;
                  final themeProvider =
                      Provider.of<TemaProvider>(context, listen: false);

                  value
                      ? themeProvider.setDarkmode()
                      : themeProvider.setLightMode();

                  setState(() {});
                },
              ),
              Divider(),
              RadioListTile(
                value: 1,
                title: Text('Masculino'),
                groupValue: Preferencias.genero,
                onChanged: (value) {
                  Preferencias.genero = value ?? 1;
                  setState(() {});
                },
              ),
              Divider(),
              RadioListTile(
                value: 2,
                title: Text('Femenino'),
                groupValue: Preferencias.genero,
                onChanged: (value) {
                  Preferencias.genero = value ?? 2;
                  setState(() {});
                },
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferencias.nombre,
                  onChanged: (value) {
                    Preferencias.nombre = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      labelText: 'Nombre', helperText: 'Escribir Nombre'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
