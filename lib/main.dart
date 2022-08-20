import 'package:flutter/material.dart';
import 'package:kgisl_gi/screens/home_screen.dart';
import 'package:kgisl_gi/screens/about.dart';
import 'package:kgisl_gi/widgets/dialog.dart';

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
