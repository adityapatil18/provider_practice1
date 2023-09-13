import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice1/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final eligiblityProvider = Provider.of<EligiblityCheckProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: eligiblityProvider.isEligible == null
                      ? Colors.blue
                      : eligiblityProvider.isEligible!
                          ? Colors.greenAccent
                          : Colors.red),
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _ageController,
              decoration: InputDecoration(hintText: 'enter your age'),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final int age = int.parse(_ageController.text.trim());
                  eligiblityProvider.checkEligiblity(age);
                },
                child: Text('check'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(eligiblityProvider.eligiblityMessage),
          ],
        ),
      ),
    );
  }
}
