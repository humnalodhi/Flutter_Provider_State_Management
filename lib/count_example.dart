import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_provider_state_management/Providers/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    Timer.periodic(const Duration(seconds: 1), (timer){
      countProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("build${countProvider.count}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count example with Provider State Management', style: TextStyle(fontSize: 14)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Center(
          //   child: Text("Time: ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}"),
          // ),
          Center(
            child: Consumer<CountProvider>(builder: (context, value, child){
              print('Only this widget builds');
              return Text(value.count.toString(), style: const TextStyle(fontSize: 50),);
            },)
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
