import 'package:flutter/material.dart';

class Focuss extends StatelessWidget {
  const Focuss({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Focus',style: Theme.of(context).textTheme.headlineLarge,),
    );
  }
}
