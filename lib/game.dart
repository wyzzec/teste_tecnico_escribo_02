import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:provider/provider.dart';
import 'package:teste_tecnico_02_escribo/components/contador_de_pontos_widget.dart';
import 'package:teste_tecnico_02_escribo/components/incrementador_de_pontos.dart';
import 'package:teste_tecnico_02_escribo/components/pontos_no_chao.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man.dart';
import 'components/ancora_camera/ancora_camera.dart';

class Game extends StatelessWidget {
  Game({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(

        top: 10,
        left: 10,
        child: Consumer<IncrementadorDePontos>(
          builder: (BuildContext context, IncrementadorDePontos value, Widget? child) {
            return ContadorDePontosWidget();
          },
        ),
      ),
      Positioned(
        top: 40,
        left: 40,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 800,
            maxHeight: 800,
            minWidth: 100,
            minHeight: 100,
          ),
          child: BonfireTiledWidget(

            showCollisionArea: true,
            joystick: Joystick(
              directional: JoystickDirectional(),
            ),
            map: TiledWorldMap(
              'mapa.tmj',
              objectsBuilder: {
                'ponto': (p) => PontosNoChao(incrementadorDePontos: context.read<IncrementadorDePontos>(), position: p.position, player: context.read<PacMan>()),
              },
            ),
            player: context.watch<PacMan>().setPositon(Vector2(2*58, 1*34)),
            cameraConfig: CameraConfig(zoom: 1.8, target: AncoraCamera(),),
          ),
        ),
      ),
    ]);
  }
}
