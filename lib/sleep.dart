import 'package:flutter/material.dart';

class Sleep extends StatelessWidget {
  const Sleep({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Sleep',style: Theme.of(context).textTheme.headlineLarge,),
    );
  }
}
