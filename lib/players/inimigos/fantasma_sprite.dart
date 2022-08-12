import 'package:bonfire/bonfire.dart';

class FantasmaSprite {
  static get idleMortoLeft => SpriteAnimation.load(
    'players/inimigos/fantasma_morto_esquerda.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: Vector2(20, 20),
    ),
  );
  static get idleMortoRight => SpriteAnimation.load(
    'players/inimigos/fantasma_morto_direita.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: Vector2(20, 20),
    ),
  );
  static get idleMortoUp => SpriteAnimation.load(
    'players/inimigos/fantasma_morto_cima.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: Vector2(20, 20),
    ),
  );
  static get idleMortoDown => SpriteAnimation.load(
    'players/inimigos/fantasma_morto_baixo.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: Vector2(20, 20),
    ),
  );
  static get runMortoRight => SpriteAnimation.load(
    'players/inimigos/fantasma_morto_direita.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: Vector2(20, 20),
    ),
  );
  static get runMortoLeft => SpriteAnimation.load(
    'players/inimigos/fantasma_morto_esquerda.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: Vector2(20, 20),
    ),
  );
  static get runMortoUp => SpriteAnimation.load(
    'players/inimigos/fantasma_morto_cima.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: Vector2(20, 20),
    ),
  );
  static get runMortoBaixo => SpriteAnimation.load(
    'players/inimigos/fantasma_morto_baixo.png',
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 0.1,
      textureSize: Vector2(20, 20),
    ),
  );

  static get explosion => SpriteAnimation.load(
    'players/inimigos/explosion.png',
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.5,
      textureSize: Vector2(20, 20),
      loop: false,
    ),
  );
}