import 'package:flutter/material.dart';

class StlWidget extends StatelessWidget {
  StlWidget({super.key});

  int x = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Stateless Widget')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(x.toString(), style: const TextStyle(fontSize: 50),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
