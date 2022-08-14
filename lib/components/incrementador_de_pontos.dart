import 'package:bonfire/player/player.dart';
import 'package:flutter/widgets.dart';

class IncrementadorDePontos extends ChangeNotifier {
  Player player;
  void incrementar() {
    player.points = player.points + 10;
    notifyListeners();
  }

  IncrementadorDePontos({
    required this.player,
  });
}
