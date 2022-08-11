import 'package:flutter/widgets.dart';
import 'package:teste_tecnico_02_escribo/main.dart';

class IncrementadorDePontos extends ChangeNotifier {
  void incrementar(){
    pontosTotais = pontosTotais + 10;
    notifyListeners();
  }
}