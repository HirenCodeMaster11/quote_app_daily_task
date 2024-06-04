import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Random quote/random_quote.dart';
import 'Togal View/togalView.dart';

void main()
{
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TogalView(),
    );
  }
}
