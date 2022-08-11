import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/main.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man_sprite.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(Vector2? position) :super(
    size: Vector2(tileSize/1.3, tileSize/1.3),
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
      CollisionArea.rectangle(size: Vector2(tileSize/1.7,tileSize/1.7))
    ]));
  }
 PacMan setPositon (Vector2 position){
    return PacMan(position);
 }
}