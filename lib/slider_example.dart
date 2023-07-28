import 'package:flutter/material.dart';
import 'package:flutter_provider_state_management/Providers/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Slider example with Provider State Management ',
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child){
            print('Only builds slider widget');
            return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          }),
          Consumer<SliderProvider>(builder: (context, value, child){
            print('Only builds row widget');
            return Row(
              children: [
                Expanded(
                    child: Container(
                      height: 100,
                      decoration:
                      BoxDecoration(color: Colors.green.withOpacity(value.value)),
                      child: const Center(
                        child: Text('Container 1'),
                      ),
                    )),
                Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(color: Colors.red.withOpacity(value.value)),
                      child: const Center(
                        child: Text('Container 2'),
                      ),
                    ))
              ],
            );
          }),
        ],
      ),
    );
  }
}
