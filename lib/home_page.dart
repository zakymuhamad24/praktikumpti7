import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nilai Counter:',
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
            const SizedBox(height: 18.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondPage');
              },
              child: const Text('Ke Halaman Kedua'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().incrementCounter();
        },
        tooltip: 'Tambah Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
