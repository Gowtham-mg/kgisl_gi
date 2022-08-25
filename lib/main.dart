import 'package:flutter/material.dart';
import 'package:kgisl_gi/screens/about.dart';
import 'package:kgisl_gi/screens/faq.dart';
import 'package:kgisl_gi/screens/home.dart';
import 'package:kgisl_gi/screens/news_n_events.dart';

import 'screens/contact_us.dart';

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
      home: ContactUsScreen(),
    );
  }
}
