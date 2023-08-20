import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bloc/bloc.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MyBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Secondpage'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          bloc.increment();
        },
        child: const Text('Increment'),
      )),
    );
  }
}
