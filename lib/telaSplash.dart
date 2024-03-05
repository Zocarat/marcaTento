import 'dart:async';
import 'package:flutter/material.dart';
import 'screenMarcaTento.dart'; // Importe a tela home ou substitua pelo nome correto do arquivo

class TelaSplash extends StatefulWidget {
  const TelaSplash({Key? key}) : super(key: key);

  @override
  _TelaSplashState createState() => _TelaSplashState();
}

class _TelaSplashState extends State<TelaSplash> {
  double opacityLevel = 0.0;

  @override
  void initState() {
    super.initState();

    // Adiciona um delay de 3 segundos antes de começar a animação
    Timer(Duration(seconds: 5), () {
      // Inicia a animação para revelar a imagem
      setState(() {
        opacityLevel = 1.0;
      });

      // Adiciona um delay adicional para a animação terminar
      Timer(Duration(seconds: 3), () {
        // Navega para a tela home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => screenMarcaTento()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        duration: Duration(seconds: 3),
        opacity: opacityLevel,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fundoSplash.png'), // Substitua pelo caminho correto
              fit: BoxFit.contain,
            ),
          ),
          child: Center(
            child: Text(
              '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
