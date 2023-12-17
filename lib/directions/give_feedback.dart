import 'package:flutter/material.dart';

class GiveUsFeedback extends StatelessWidget {
  const GiveUsFeedback({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Give us feedback '),
      ),
      body: const Center(
        child: Text('hello sir!'),
      ),
    );
  }
}