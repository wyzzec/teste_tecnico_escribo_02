import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:teste_tecnico_02_escribo/players/ancora_camera/ancora_camera.dart';
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
      forceTileSize: const Size(20,20),),

      player: PacMan(Vector2(8*20, 6*20)),
      cameraConfig: CameraConfig(zoom: 0.8, target: AncoraCamera(),sizeMovementWindow: Vector2(50,50)),

    );
  }
}
