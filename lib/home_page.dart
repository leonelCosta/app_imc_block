import 'package:app_imc_block/blocs/bloc_imc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculo de IMC'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: bloc.weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite a altura (cm)',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: bloc.heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite a peso (kg)',
              ),
            ),
          ),
          Text(
            bloc.result,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueAccent, fontSize: 20.0),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: () => {
                setState(() {
                  bloc.calculate();
                })
              },
              child: Text('Calcular'),
            ),
          )
        ],
      ),
    );
  }
}
