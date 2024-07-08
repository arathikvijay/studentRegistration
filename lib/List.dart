import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Student List")),
      ),
    );
  }
}