import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_tecnico_02_escribo/components/incrementador_de_pontos.dart';
import 'package:teste_tecnico_02_escribo/game.dart';
class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: ChangeNotifierProvider(create: (_) => IncrementadorDePontos(),
            child: Game())),
      ),
    );
  }
}
