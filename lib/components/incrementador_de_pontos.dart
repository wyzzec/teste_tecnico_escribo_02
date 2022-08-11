import 'package:bonfire/player/player.dart';
import 'package:flutter/widgets.dart';

class IncrementadorDePontos extends ChangeNotifier {
  void incrementar(Player player){
    player.points = player.points + 10;
    notifyListeners();
  }
}