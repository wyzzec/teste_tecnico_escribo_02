import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:provider/provider.dart';
import 'package:teste_tecnico_02_escribo/components/contador_de_pontos_widget.dart';
import 'package:teste_tecnico_02_escribo/components/estado_do_jogo.dart';
import 'package:teste_tecnico_02_escribo/components/fruta.dart';
import 'package:teste_tecnico_02_escribo/components/incrementador_de_pontos.dart';
import 'package:teste_tecnico_02_escribo/components/pontos_no_chao.dart';
import 'package:teste_tecnico_02_escribo/initial_widget.dart';
import 'package:teste_tecnico_02_escribo/players/inimigos/fantasma_vermelho.dart';
import 'package:teste_tecnico_02_escribo/players/pacman/pac_man.dart';
import 'components/ancora_camera/ancora_camera.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<EstadoDoJogo>(builder: (BuildContext context, EstadoDoJogo value, Widget? child) {
      if (!value.emAndamento) {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const InitialWidget()));
        });
      }
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
              showCollisionArea: false,
              joystick: Joystick(
                keyboardConfig: KeyboardConfig(),
                directional: JoystickDirectional(),
              ),
              map: TiledWorldMap(
                'mapa.tmj',
                objectsBuilder: {
                  'ponto': (p) => PontosNoChao(incrementadorDePontos: context.read<IncrementadorDePontos>(), position: p.position, player: context.read<PacMan>()),
                  'fantasmaVermelho': (p) => FantasmaVermelho(position: p.position, pacMan: context.read<PacMan>()),
                  'fruta': (p) => Fruta(position: p.position, pacMan: context.read<PacMan>())
                },
              ),
              player: context.watch<PacMan>().setPositon(Vector2(2 * 58, 1 * 34), context.read<EstadoDoJogo>()),
              cameraConfig: CameraConfig(
                zoom: 1.8,
                target: AncoraCamera(),
              ),
            ),
          ),
        ),
      ]);
    });
  }
}
