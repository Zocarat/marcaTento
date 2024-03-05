import 'package:flutter/material.dart';
import 'screenMarcaTento.dart';

class funcoesJogo {
  static int trucada(int valorTurno) {
    if (valorTurno == 1) {
      return 3;
    }
    if (valorTurno == 3) {
      return 6;
    }
    if (valorTurno == 6) {
      return 9;
    }
    if (valorTurno == 9) {
      return 12;
    }

    return 1;
  }




}
