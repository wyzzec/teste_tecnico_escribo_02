import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/components/sprites_do_game.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man.dart';

class Fruta extends GameDecoration with Sensor {

  final PacMan pacMan;

  Fruta ({required Vector2 position, required this.pacMan}) : super.withAnimation(animation: SpritesDoGame.frutasNoChao(), position: position, size: Vector2(20, 20)){
    setupSensorArea(intervalCheck: 100);
  }


  @override
  void onContact(GameComponent component) {
    if (component is PacMan){
      pacMan.ativarPoder();
      removeFromParent();
    }
  }
}