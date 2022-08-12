import 'package:bonfire/bonfire.dart';
import 'package:bonfire/util/direction_animations/simple_direction_animation.dart';
import 'package:teste_tecnico_02_escribo/players/inimigos/fantasma.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man.dart';

import 'fantasma_sprite.dart';
import 'fantasma_vermelho_sprite.dart';

class FantasmaVermelho extends Fantasma  {
  FantasmaVermelho({required super.position, required PacMan pacMan})
      : super(
          pacMan: pacMan,
          simpleDirectionAnimation: simpleDirectionAnimationGetter
        );
  static SimpleDirectionAnimation get simpleDirectionAnimationGetter => SimpleDirectionAnimation(
    idleRight: FantasmaVermelhoSprite.idleRight,
    runRight: FantasmaVermelhoSprite.runRight,
    idleLeft: FantasmaVermelhoSprite.idleLeft,
    runLeft: FantasmaVermelhoSprite.runLeft,
  );
    static SimpleDirectionAnimation get deadGhost => SimpleDirectionAnimation(
    idleRight: FantasmaSprite.idleMortoRight,
    runRight: FantasmaSprite.runMortoRight,
    idleLeft: FantasmaSprite.idleMortoLeft,
    runLeft: FantasmaSprite.runMortoLeft,
  );


  @override
  void update(double dt) {
    super.update(dt);
  if (pacMan.modoPoderosoAtivado) {
    replaceAnimation(SimpleDirectionAnimation(idleRight: FantasmaSprite.idleMortoRight, runRight: FantasmaSprite.runMortoRight));
  }
  }
}