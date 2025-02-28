
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: _criarAppBar(),
      body: _criarbody(),
    );
  }

  AppBar _criarAppBar(){
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text('Atividade - Interface'),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.sync),
        ),
      ],

    );
  }

  Widget _criarbody() {
    return ListView(
      //Column(
      children: [
        for (int i = 0; i < (Random().nextInt(20) + 5 ); i++)
          Row(
            children: [
              for (int j = 0; j < (Random().nextInt(5) + 1 ); j++)
                Expanded(
                    child: CustomCard(label: 'Linha ${i+1} | Coluna ${j+1}',)
                )
            ],
          )
      ],
    );
  }
}

class CustomCard extends StatelessWidget{
  final String label;

  const CustomCard({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Card(
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: SizedBox(
        height: 80,
        child: Center(
          child: Text(label),
        ),
      ),
    );
  }
}