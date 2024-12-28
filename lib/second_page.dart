import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/counter_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter di Halaman Kedua:',
              style: TextStyle(fontSize: 18.0),
            ),
              Consumer<CounterProvider>(
              builder: (context, counterProvider, child){
                return Text(
                '${counterProvider.counter}',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                ),
              );
              }
            ),
          ],
        ),
      ),
    );
  }
}
