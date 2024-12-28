import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/home_page.dart';
import 'package:provider_demo/providers/counter_provider.dart';
import 'package:provider_demo/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/secondPage': (context) => const SecondPage(),
        },
      ),
    );
  }
}
