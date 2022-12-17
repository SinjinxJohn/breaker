import 'package:breaker/screens/settings.dart';
import 'package:breaker/screens/settings/notification/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberof = 6;
  // List<String> _title = [
  //   "Add Breaker",
  //   "Add Part",
  //   "Scan Location",
  // ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            height: 40,
            width: 40,
            // color: Colors.purple,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.pink),
          ),
          backgroundColor: Color.fromARGB(255, 218, 197, 8),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notify()));
                },
                icon: Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            IconButton(onPressed: () {}, icon: Icon(Icons.replay_outlined))
          ],
        ),
        body: Column(
          children: [
            // FutureBuilder(
            //     future: apicall(),
            //     builder: ((context, AsyncSnapshot<List<Crypto>> snapshot) {
            //       if (!snapshot.hasData) {
            //         return CircularProgressIndicator();
            //       }
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: SizedBox(
                    width: 380,
                    height: 670,
                    child: Card(
                      color: Colors.white,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: numberof,
                          itemBuilder: ((context, index) {
                            if (numberof > 0) {
                              return _listItem(index - 1);
                            } else {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 350),
                                  child: Container(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              );
                            }
                          })),
                    ),
                  ),
                  // SizedBox(height: 10,),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                      Text(
                        "LIVE CHAT",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                  width: 140,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.white,
                      ),
                      Text(
                        "Whatsapp Chat",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("2022 ALL Right Reserved By Lyons Syste,s Ltd."),
            SizedBox(
              height: 10,
            ),
            Text("version 126(4.1.20"),
            // SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }

  _listItem(index) {
    // var price_change = _found[index].priceChangePercentage24h;
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 15),
          child: Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 10, bottom: 20),
                  child: Text(
                    "Add Part",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   width: 5,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                  child: Text(
                      "Easily add the part accrding to your\nspecific needs",
                      style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 7,
                ),

                // Text("\$" + _found[index].currentPrice.toString(),
                //     style: TextStyle(
                //       fontSize: 16,
                //     )),
              ]),
              // SizedBox(
              //   width: 50,
              // ),
              // Spacer(),

              // Text(
              //   _found[index].priceChangePercentage24h.toString() + "%",
              //   style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       color: price_change! < 0 ? Colors.red : Colors.green),
              // ),
              // SizedBox(
              //   width: 5,
              // ),
              // Spacer(),
              // IconButton(
              //     onPressed: () {
              //       setState(() {
              //         _click = !_click;
              //       });
              //       // icon:
              //       // Icon(
              //       //   Icons.favorite,
              //       //   // color: Colors.red,
              //       // );
              //     },
              //     icon: Icon(
              //       (_click == false) ? Icons.favorite : Icons.favorite_border,
              //     ))
              Spacer(),
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.car_rental),
              ),

              SizedBox(
                width: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
