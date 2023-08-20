import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_bloc_example/bloc/bloc.dart';

import 'secondpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // Dann kannst du hier den Bloc referenzieren und nutzen (beachte man brauch immer den context)
    // Mit read kannst du die Funktionen aufrufen die im Bloc definiert sind
    final bloc = context.read<MyBloc>();

    // Mit watch kannst du auf Änderungen reagieren
    final watch = context.watch<MyBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple bloc example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              watch.counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                bloc.increment();
              },
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                // Die Funktion decrement welche ein Mixin ist kannst du ganz normal benutzen
                bloc.decrement();
              },
              child: const Text('Decrement'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Secondpage(),
                  ),
                );
              },
              child: const Text('Go to second page'),
            ),
          ],
        ),
      ),
    );
  }
}
