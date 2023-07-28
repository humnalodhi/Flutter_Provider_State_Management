import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StfWidget extends StatefulWidget {
  const StfWidget({super.key});

  @override
  State<StfWidget> createState() => _StfWidgetState();
}

class _StfWidgetState extends State<StfWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Stateful Widget')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(count.toString(), style: const TextStyle(fontSize: 50),),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
