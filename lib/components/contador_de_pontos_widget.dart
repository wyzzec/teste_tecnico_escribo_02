import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:teste_tecnico_02_escribo/main.dart';

class ContadorDePontosWidget extends StatefulWidget {
  ContadorDePontosWidget({Key? key, required this.player}) : super(key: key);
  Player? player;
  @override
  State<ContadorDePontosWidget> createState() => _ContadorDePontosWidgetState();
}

class _ContadorDePontosWidgetState extends State<ContadorDePontosWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(pontosTotais.toString(), style: const TextStyle(color: Colors.green),);
  }
}