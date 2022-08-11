import 'package:bonfire/util/direction_animations/simple_direction_animation.dart';
import 'package:teste_tecnico_02_escribo/players/inimigos/fantasma.dart';

import 'fantasma_vermelho_sprite.dart';

class FantasmaVermelho extends Fantasma {
  FantasmaVermelho({required super.position}): super (simpleDirectionAnimation: SimpleDirectionAnimation(idleRight: FantasmaVermelhoSprite.idleRight, runRight: FantasmaVermelhoSprite.runRight, idleLeft: FantasmaVermelhoSprite.idleLeft));
}