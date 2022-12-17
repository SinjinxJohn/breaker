import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class textField extends StatelessWidget {
  String value;
  Icon icons;
  textField({super.key, required this.value, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 239, 209),
          border: Border.all(color: Colors.yellow, width: 2),
          borderRadius: BorderRadius.circular(50)),
      // color: Colors.white,
      // height: 70,
      width: 350,
      child: TextField(
        // obscureText: false,
        decoration: InputDecoration(
            hintText: value,
            prefixIcon: icons,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
                borderRadius: BorderRadius.circular(50)),
            // border: OutlineInputBorder(
            //     borderSide: BorderSide(
            //       color: Colors.blue,
            //     ),
            //     borderRadius: BorderRadius.circular(50))
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
      ),
    );
  }
}
