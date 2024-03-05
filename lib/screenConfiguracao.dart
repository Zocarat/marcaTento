import 'package:flutter/material.dart';
import 'UIHelper.dart';

class screenConfiguracao extends StatefulWidget {
  const screenConfiguracao({super.key});

  @override
  State<screenConfiguracao> createState() => _screenConfiguracaoState();
}

class _screenConfiguracaoState extends State<screenConfiguracao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Center(
        child:
        Column(
          children: [
            SizedBox(height: 35),
            Text("Escolher nome de timer"),
            configNomearTimes('Eles'),
            configNomearTimes('Nois'),
          ],
        ),
      )

    );
  }
}
