import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/components/incrementador_de_pontos.dart';
import 'package:teste_tecnico_02_escribo/components/sprites_do_game.dart';
import 'package:teste_tecnico_02_escribo/main.dart';

class PontosNoChao extends GameDecoration with Sensor {
  final double pontos = 0;
  final IncrementadorDePontos incrementadorDePontos;
  PontosNoChao({required Vector2 position, required this.incrementadorDePontos}) : super.withAnimation(animation: SpritesDoGame.pontosNoChao(), position: position, size: Vector2(3, 3)){
    setupSensorArea(intervalCheck: 100);
  }

@override
  void update(double dt) {
    super.update(dt);
  }
  @override
  void onContact(GameComponent component) {
    if (component is Player){
      incrementadorDePontos.incrementar();
      component.points = pontosTotais;
      removeFromParent();
    }
  }
  Player returnPlayer (){
    return gameRef.player!;
  }
}