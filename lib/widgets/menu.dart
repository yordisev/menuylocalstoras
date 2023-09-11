import 'package:flutter/material.dart';
import 'package:menuylocalstoras/screens/ajustes.dart';
import 'package:menuylocalstoras/screens/inicio.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _MenuImagen(),
          ListTile(
            leading: Icon(Icons.pages),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pushNamed(context, InicioScreen.routerName);
            },
          ),
          ListTile(
            leading: Icon(Icons.people_alt_sharp),
            title: Text('Usuarios'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text('Ajustes'),
            onTap: () {
              Navigator.pushReplacementNamed(context, AjustesScreen.routerName);
            },
          )
        ],
      ),
    );
  }
}

class _MenuImagen extends StatelessWidget {
  const _MenuImagen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
