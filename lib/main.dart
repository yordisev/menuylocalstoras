import 'package:flutter/material.dart';
import 'package:menuylocalstoras/providers/cambiartema.dart';
import 'package:menuylocalstoras/screens/screen.dart';
import 'package:menuylocalstoras/shared_preferen/preferencias.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferencias.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => TemaProvider(modotema: Preferencias.modooscuro))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: InicioScreen.routerName,
      routes: {
        InicioScreen.routerName: (_) => InicioScreen(),
        AjustesScreen.routerName: (_) => AjustesScreen(),
      },
      theme: Provider.of<TemaProvider>(context).temaactual,
    );
  }
}
