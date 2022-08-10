import 'package:flutter/material.dart';
import 'package:teste_tecnico_02_escribo/game.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Game(),
    );
  }
}
