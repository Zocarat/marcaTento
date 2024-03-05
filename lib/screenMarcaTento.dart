import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'UIHelper.dart';
import 'funcaoJogo.dart';
import 'screenConfiguracao.dart';

class screenMarcaTento extends StatefulWidget {
  const screenMarcaTento({super.key});

  @override
  State<screenMarcaTento> createState() => _screenMarcaTentoState();
}

class _screenMarcaTentoState extends State<screenMarcaTento> {
  static int valorPartida = 1;
  int placarNos = 0;
  int placarEles = 0;
  String timeEles = 'Eles';
  String timeNois = 'Nois';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marca Tento'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => screenConfiguracao()));
          }, icon: Icon(Icons.add_circle)),
        ],
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(

                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/fundoHome2.png'),
                    fit: BoxFit.fill,
                  )
                ),



              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          painelPlacar(timeEles, placarEles, valorPartida, () {
                            setState(() {
                              placarEles = placarEles + valorPartida;
                              valorPartida = 1;
                            });
                            atualizador();
                          }),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          painelPlacar(timeNois, placarNos, valorPartida, () {
                            setState(() {
                              placarNos = placarNos + valorPartida;
                              valorPartida = 1;
                            });

                            atualizador();
                          }),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  buttonTruco(() {
                    setState(() {
                      valorPartida = funcoesJogo.trucada(valorPartida);
                    });
                  })
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void atualizador() {
    String vencedor = '';

    if (placarEles >=12 || placarNos >=12) {
      if (placarEles >= 12) {
        vencedor = timeEles;
        placarEles = 12;

      }else{
        vencedor = timeNois;
        placarNos = 12;
      }
      fimDeJogo(vencedor, context);
      placarNos = 0;
      placarEles = 0;
      valorPartida = 1;

    }
  }
}
