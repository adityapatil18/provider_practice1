import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice1/home_page.dart';
import 'package:provider_practice1/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => EligiblityCheckProvider(),
      child: ProviderPractice1()));
}

class ProviderPractice1 extends StatelessWidget {
  const ProviderPractice1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
