import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.indigo,
        ),
        body: ballPage(),
      ),
    ),
  );
}

class ballPage extends StatefulWidget {
  const ballPage({Key? key}) : super(key: key);
  @override
  State<ballPage> createState() => _ballPageState();
}

class _ballPageState extends State<ballPage> {
  var randnum = 3;

  void ballUpdate() {
    randnum = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballUpdate();
            });
          },
          child: Image.asset('images/ball$randnum.png'),
        ),
      ),
    );
  }
}
