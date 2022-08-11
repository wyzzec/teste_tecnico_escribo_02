import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man_sprite.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(Vector2? position) :super(
    size: Vector2(20, 20),
    animation: SimpleDirectionAnimation(
        idleRight: PacManSprite.idleRight,
        runRight: PacManSprite.runRight,
        idleLeft: PacManSprite.idleLeft,
        runLeft: PacManSprite.runLeft,
        idleUp: PacManSprite.idleUp,
        runUp: PacManSprite.runUp,
        idleDown: PacManSprite.idleDown,
        runDown: PacManSprite.runDown,),
    position: position ?? Vector2(10, 10),
    speed: 80,
  ){
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(radius: 6, align: Vector2(4, 4))
    ]));
  }
 PacMan setPositon (Vector2 position){
    return PacMan(position);
 }
}