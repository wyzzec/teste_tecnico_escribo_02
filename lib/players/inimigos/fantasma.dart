import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/players/inimigos/fantasma_sprite.dart';
import '../pacman/pac_man.dart';

class Fantasma extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement, Sensor{
  SimpleDirectionAnimation simpleDirectionAnimation;
  PacMan pacMan;
  double radiusCollision = 5;
  Fantasma({required Vector2 position, required this.simpleDirectionAnimation, required this.pacMan})
      : super(
          position: position,
          size: Vector2(20, 20),
          animation: simpleDirectionAnimation,
          speed: 40,
        ) {
    setupCollision(CollisionConfig(collisions: [CollisionArea.circle(radius: radiusCollision, align: Vector2(2.3, 3.1))]));
  }
  @override
  void update(double dt) {
    super.update(dt);
    if (!teveContato) {
      if (pacMan.modoPoderosoAtivado) {
        seeAndMoveToAttackRange(
            minDistanceFromPlayer: 300,
            positioned: (p) {},
            radiusVision: 64,
            notObserved: () {
              runRandomMovement(dt, maxDistance: 50, minDistance: 50, speed: speed, timeKeepStopped: 2);
            });
      } else {
        seeAndMoveToPlayer(
            margin: 0,
            radiusVision: 46,
            closePlayer: (player) {},
            notObserved: () {
              runRandomMovement(dt, maxDistance: 50, minDistance: 50, speed: speed, timeKeepStopped: 2);
            });
      }
    }
  }

  bool teveContato = false;

  @override
  void onContact(GameComponent component) {
    if (component is Player) {
      teveContato = true;
      if (pacMan.modoPoderosoAtivado) {
        gameRef.add(GameDecoration.withAnimation(animation: FantasmaSprite.explosion, position: position, size: size));
        Future.delayed(const Duration(milliseconds: 1400), (){
          position = (Vector2(14.5 * 20, 2.7 * 20));
          teveContato = false;
        });
      } else {
        component.die();
      }
    }
  }
}
