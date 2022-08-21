import 'package:flutter/material.dart';
import 'package:kgisl_gi/screens/home.dart';

void main() {
  runApp(KgislGI());
}

class KgislGI extends StatelessWidget {
  const KgislGI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
