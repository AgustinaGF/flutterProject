import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //la altura a va a estar dada por el componente padre, en este caso el Scaffold
        body: SingleChildScrollView(
      child: Column(
        children: List.generate(
          18,
          (index) => Container(
            color: Colors.primaries[index],
            height: 100,
          ),
        ),
      ),
    ));
  }
}