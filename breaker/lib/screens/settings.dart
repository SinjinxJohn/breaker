import 'package:breaker/screens/settings/aspectRatio.dart';
import 'package:breaker/screens/settings/barcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 217, 199, 33),
        title: Text("Settings"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ratio()));
              },
              child: ListTile(
                  title: Text(
                    "Aspect Ratio",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_circle_right_rounded)),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Barcode()));
              },
              child: ListTile(
                  title: Text(
                    "Barcode",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_circle_right_rounded)),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            )
          ],
        ),
        //   child: Column(
        // children: [
        //   Padding(
        //     padding: const EdgeInsets.only(top: 25.0, left: 15),
        //     child: Container(
        //       child: Text(
        //         "Aspect Ratio",
        //         style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.only(top: 25.0, left: 15),
        //     child: Container(
        //       child: Text(
        //         "Aspect Ratio",
        //         style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   )
      ),
    );
  }
}
