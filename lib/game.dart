import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:provider/provider.dart';
import 'package:teste_tecnico_02_escribo/components/contador_de_pontos_widget.dart';
import 'package:teste_tecnico_02_escribo/components/incrementador_de_pontos.dart';
import 'package:teste_tecnico_02_escribo/components/pontos_no_chao.dart';
import 'package:teste_tecnico_02_escribo/main.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man.dart';
import 'components/ancora_camera/ancora_camera.dart';

class Game extends StatelessWidget {
  Game({Key? key}) : super(key: key);
  PacMan pacMan = PacMan(null);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 10,
        left: 10,
        child: Consumer<IncrementadorDePontos>(
          builder: (BuildContext context, IncrementadorDePontos value, Widget? child) {
            return ContadorDePontosWidget(
              player: pacMan,
            );
          },
        ),
      ),
      Positioned(
        top: 100,
        left: 40,
        child: Container(
          width: 800,
          height: 400,
          child: BonfireTiledWidget(
            showCollisionArea: false,
            joystick: Joystick(
              directional: JoystickDirectional(),
            ),
            map: TiledWorldMap(
              'mapa.tmj',
              objectsBuilder: {
                'ponto': (p) => PontosNoChao(incrementadorDePontos: context.read<IncrementadorDePontos>(), position: p.position),
              },
              forceTileSize: Size(tileSize, tileSize),
            ),
            player: pacMan.setPositon(Vector2(9 * 20, 6 * 20)),
            cameraConfig: CameraConfig(zoom: 1, target: AncoraCamera(), sizeMovementWindow: Vector2(50, 50)),
          ),
        ),
      ),
    ]);
  }
}
