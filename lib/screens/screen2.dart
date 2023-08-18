import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      color: Colors.green,
      child: Center(
        child: Text(
          "Screen2",
          style: TextStyle(fontSize: 30),
        ),
      ),
    ));
  }
}
