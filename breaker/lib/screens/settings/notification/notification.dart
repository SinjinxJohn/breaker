import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        backgroundColor: Color.fromARGB(255, 225, 207, 42),
      ),
    );
  }
}
