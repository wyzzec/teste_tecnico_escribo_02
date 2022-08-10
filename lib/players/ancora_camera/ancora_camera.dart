import 'package:bonfire/bonfire.dart';

class AncoraCamera extends RotationPlayer{
  AncoraCamera(): super(
    size: Vector2(1, 1),
    animIdle: SpriteAnimation.load('ancora_camera.png', SpriteAnimationData.sequenced(amount: 1, stepTime: 1, textureSize: Vector2(1,1))),
    animRun: SpriteAnimation.load('ancora_camera.png', SpriteAnimationData.sequenced(amount: 1, stepTime: 1, textureSize: Vector2(1,1))),
    position: Vector2(8.5*20, 5*20),
  );

}