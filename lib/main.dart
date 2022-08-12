import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_tecnico_02_escribo/initial_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]).then((value) => runApp(const InitialWidget()));
}
