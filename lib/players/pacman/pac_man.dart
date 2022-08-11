import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/components/estado_do_jogo.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man_sprite.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(
    Vector2? position, {required this.estadoDoJogo}
  ) : super(
          size: Vector2(20, 20),
          animation: SimpleDirectionAnimation(
            idleRight: PacManSprite.idleRight,
            runRight: PacManSprite.runRight,
            idleLeft: PacManSprite.idleLeft,
            runLeft: PacManSprite.runLeft,
            idleUp: PacManSprite.idleUp,
            runUp: PacManSprite.runUp,
            idleDown: PacManSprite.idleDown,
            runDown: PacManSprite.runDown,
          ),
          position: position ?? Vector2(10, 10),
          speed: 60,
        ) {
    setupCollision(CollisionConfig(collisions: [CollisionArea.circle(radius: 6, align: Vector2(4, 4))]));
  }

  EstadoDoJogo estadoDoJogo;

  @override
  void die() {
    gameRef.add(GameDecoration.withAnimation(animation: PacManSprite.pacManDead, position: position, size: size));
    removeFromParent();
      estadoDoJogo.mudarEstado();
    super.die();
  }

  PacMan setPositon(Vector2 position, EstadoDoJogo estadoDoJogo) {
    return PacMan(position, estadoDoJogo: estadoDoJogo);
  }
}
