import 'package:breaker/components/textfield.dart';
import 'package:breaker/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60.0, bottom: 40),
                child: Container(
                    height: 135,
                    width: 140,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 3),
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.purple)),
              ),
              SizedBox(
                height: 15,
              ),
              textField(value: "Client ID", icons: Icon(Icons.fingerprint)),
              SizedBox(
                height: 17,
              ),
              textField(value: "Username", icons: Icon(Icons.person)),
              SizedBox(
                height: 17,
              ),
              textField(value: "Password", icons: Icon(Icons.lock_open)),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  height: 70,
                  width: 350,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 227, 205, 9)),
                  child: Center(
                      child: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Forgot Your Password?",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 15),
              ),
              // SizedBox(
              //   height: 60,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 165.0),
                child: Text(
                  "2019 All Right Reserved By Lynos Systems Ltd.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
