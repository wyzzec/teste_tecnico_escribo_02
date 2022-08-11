import 'package:bonfire/bonfire.dart';

class Fantasma extends SimpleEnemy with ObjectCollision, Sensor{
  final SimpleDirectionAnimation simpleDirectionAnimation;
  Fantasma({required Vector2 position, required this.simpleDirectionAnimation}) : super (
    position: position,
    size: Vector2(20, 20),
    animation: simpleDirectionAnimation,
    speed: 65,
  ){
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.circle(radius: 6, align: Vector2(4, 4))
    ]));
  }

  @override
  void onContact(GameComponent component) {
    if (component is Player){
      component.die();
    }
  }
}