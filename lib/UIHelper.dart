import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget configNomearTimes(String nomeTime) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.all(1),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.blue.shade100,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: nomeTime,
                  border: InputBorder.none,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('OK'),
            ),
            SizedBox(width: 6),
          ],
        ),
      )
    ],
  );
}

// =========================================================================
Widget textoTime(String text) {
  return Container(
    width: 180,
    alignment: Alignment.center,
    child: Column(
      children: [
        SizedBox(height: 50),
        Container(
          // nome do time
          child: Text(
            text,
            style: TextStyle(fontSize: 50),
          ),
        ),
        SizedBox(height: 50),
      ],
    ),
  );
}

Widget painelPlacar(
  String time,
  int placar,
  int valorPartida,
  VoidCallback callback,
) {
  return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        //margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundoTime.png'),
            fit: BoxFit.contain,
          ),
        ),

        child: Column(
          children: [
            textoTime('$time'),
            Text(
              '$placar',
              style: TextStyle(
                fontSize: 120,
              ),
            ),
            buttonUm('$valorPartida', callback),
          ],
        ),
      )
    ],
  ));
}

Widget buttonUm(String valor, VoidCallback callback) {
  return Container(
    child: ElevatedButton(
      onPressed: callback,
      child: Text(
        '+$valor',
        style: TextStyle(
          fontSize: 35,
        ),
      ),
    ),
  );
}

Widget buttonTruco(VoidCallback callback) {
  return Container(
      width: 150,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: callback,
            child: Text('TRUCO!'),
          ),
          SizedBox(height: 20)
        ],
      ));
}

void fimDeJogo(String time, BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Fim de Jogo!'),
          content: Text('O time $time venceu!'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'))
          ],
        );
      });
}

//================================================================
