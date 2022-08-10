import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man.dart';
class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      showCollisionArea: true,
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: TiledWorldMap('mapa.tmj',
      forceTileSize: const Size(32,32),),
      player: PacMan(Vector2(8*20, 6*20)),
    );
  }
}
