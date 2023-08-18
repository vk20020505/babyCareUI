import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        body: Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      color: Colors.blue,
      child: Center(
        child: Text(
          "Screen3",
          style: TextStyle(fontSize: 30),
        ),
      ),
    ));
  }
}