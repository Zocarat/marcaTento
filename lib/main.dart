import 'package:flutter/material.dart';
import 'package:marca_tento_truco/telaSplash.dart';
import 'screenMarcaTento.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TelaSplash());
  }
}
