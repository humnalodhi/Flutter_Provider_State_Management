import 'dart:async';
import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer){
      count++;
      print(count);
      setState(() {

      });
    });
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('build$count');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Why we use providers'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Time: ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}"),
          ),
          Center(
            child: Text(count.toString(), style: const TextStyle(fontSize: 50),),
          ),
        ],
      ),
    );
  }
}
