import 'package:bonfire/bonfire.dart';
import '../pacman/pac_man.dart';

class Fantasma extends SimpleEnemy with ObjectCollision, Sensor, AutomaticRandomMovement{
  final SimpleDirectionAnimation simpleDirectionAnimation;
  PacMan pacMan;
  Fantasma({required Vector2 position, required this.simpleDirectionAnimation, required this.pacMan}) : super (
    position: position,
    size: Vector2(20, 20),
    animation: simpleDirectionAnimation,
    speed: 40,
  ){
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(radius: 5, align: Vector2(2.3, 3.1))
    ]));
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (pacMan.modoPoderosoAtivado){
      seeAndMoveToAttackRange(minDistanceFromPlayer: 300, positioned:  (p) {}, radiusVision: 64, notObserved: (){
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
  @override
  void onContact(GameComponent component) {
    if (component is Player){
      component.die();
    }
  }
}