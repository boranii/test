import 'package:flutter/material.dart';

class Relax extends StatelessWidget {
  const Relax({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Relax',style: Theme.of(context).textTheme.headlineLarge,),
    );
  }
}
