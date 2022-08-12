import 'package:flutter/material.dart';

class EstadoDoJogo extends ChangeNotifier {
  bool emAndamento = true;

  void mudarEstado() {
    emAndamento = false;
    notifyListeners();
  }
}
