import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter '),
      ),
      body: const Center(
        child: Text('Filter page!'),
      ),
    );
  }
}