
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
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Card(
                  color: Colors.primaries[Random().
                  nextInt(Colors.primaries.length)],
                  child: const SizedBox(
                    height: 80,
                    child: Center(
                      child: Text('Linha 1 | Coluna 1'),
                    ),
                  ),
                )
            ),
            Expanded(
                child: Card(
                  color: Colors.primaries[Random().
                  nextInt(Colors.primaries.length)],
                  child: const SizedBox(
                    height: 80,
                    child: Center(
                      child: Text('Linha 1 | Coluna 2'),
                    ),
                  ),
                )
            ),
            Expanded(
                child: Card(
                  color: Colors.primaries[Random().
                  nextInt(Colors.primaries.length)],
                  child: const SizedBox(
                    height: 80,
                    child: Center(
                      child: Text('Linha 1 | Coluna 3'),
                    ),
                  ),
                )
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Card(
                  color: Colors.primaries[Random().
                  nextInt(Colors.primaries.length)],
                  child: const SizedBox(
                    height: 80,
                    child: Center(
                      child: Text('Linha 2 | Coluna 1'),
                    ),
                  ),
                )
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Card(
                  color: Colors.primaries[Random().
                  nextInt(Colors.primaries.length)],
                  child: const SizedBox(
                    height: 80,
                    child: Center(
                      child: Text('Linha 3 | Coluna 1'),
                    ),
                  ),
                )
            )
          ],
        )
      ],
    );
  }

}