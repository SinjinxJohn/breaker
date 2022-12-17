import 'package:breaker/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ratio extends StatefulWidget {
  const Ratio({super.key});

  @override
  State<Ratio> createState() => _RatioState();
}

class _RatioState extends State<Ratio> {
  String? choice;
  String? radVal;

  @override
  void initState() {
    // radVal = "Default";
    radVal = "Default";
    // setState(() {
    //   radVal = value;
    // });

    // TODO: implement initState
    super.initState();
  }

  void changes(String? value) {
    setState(() {
      radVal = value;
      // switch (value) {
      //   case "Default":
      //     choice = value;
      //     break;
      //   case "one":
      //     choice = value;
      //     break;
      //   case "two":
      //     choice = value;
      //     break;
      //   case "three":
      //     choice = value;
      //     break;

      //   default:
      //     choice = "Default";
      // }
      // debugPrint(choice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 217, 199, 33),
          title: Text("Aspect Ratio"),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Center(
                  child: Text(
                "Select Aspect Ratio to Capture Images",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              RadioListTile(
                  title: Text(
                    "Default",
                    style: TextStyle(fontSize: 14),
                  ),
                  value: "Default",
                  groupValue: radVal,
                  onChanged: changes),
              RadioListTile(
                  title: Text(
                    "1:1",
                    style: TextStyle(fontSize: 14),
                  ),
                  value: "one",
                  groupValue: radVal,
                  onChanged: changes),
              RadioListTile(
                  title: Text(
                    "4:3",
                    style: TextStyle(fontSize: 14),
                  ),
                  value: "two",
                  groupValue: radVal,
                  onChanged: changes),
              RadioListTile(
                  title: Text(
                    "16:9",
                    style: TextStyle(fontSize: 14),
                  ),
                  value: "three",
                  groupValue: radVal,
                  onChanged: changes),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Settings())));
                  },
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 217, 199, 33),
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        )));
    ;
  }
}
