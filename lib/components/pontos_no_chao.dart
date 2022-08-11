import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/components/incrementador_de_pontos.dart';
import 'package:teste_tecnico_02_escribo/components/sprites_do_game.dart';

class PontosNoChao extends GameDecoration with Sensor {
  final IncrementadorDePontos incrementadorDePontos;
  final Player player;
  PontosNoChao({required Vector2 position, required this.incrementadorDePontos, required this.player}) : super.withAnimation(animation: SpritesDoGame.pontosNoChao(), position: position, size: Vector2(3, 3)){
    setupSensorArea(intervalCheck: 100);
  }


  @override
  void onContact(GameComponent component) {
    if (component is Player){
      incrementadorDePontos.incrementar(player);
      removeFromParent();
    }
  }
}