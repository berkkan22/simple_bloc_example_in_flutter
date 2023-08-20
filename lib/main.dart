import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_bloc_example/bloc/bloc.dart';
import 'package:simple_bloc_example/homepage.dart';

void main() {
  runApp(
    // Den ChangeNotifierProvider oben hinzufügen, damit die App auf Änderungen reagieren kann
    ChangeNotifierProvider<MyBloc>(
      create: (context) => MyBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}
