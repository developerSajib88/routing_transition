import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: const Center(
          child: Text(
            "This is Sajib Hasan"
          ),
        ),
      ),
    );
  }
}
