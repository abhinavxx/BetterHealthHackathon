import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectBiyt/HubPage/BuyingPage/items_page.dart';

class Assistant extends StatefulWidget {
  @override
  _AssistantState createState() => _AssistantState();
}

class _AssistantState extends State<Assistant> {
  List<String> image = [
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/16.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg"
  ];
  List<String> litems = [
    "STAY HOME STAY SAFE",
    "WASH YOUR HANDS",
    "WEAR MASK",
    "MAINTAIN SOCIAL dISTANCING",
    "EXERCISE DAILY",
    "EAT HEALTHLY NUTRITION",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Your',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 26,
                        color: Colors.black)),
                TextSpan(
                    text: ' Assistant',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Containment',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 26,
                              color: Colors.black)),
                      TextSpan(
                          text: ' Zones',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                elevation: 2,
                margin: EdgeInsets.only(left: 14, right: 14, top: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Container(
                    height: 180,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/imp17.jpg",
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Precautions!",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )),
            Flexible(
              child: new ListView.builder(
                  itemCount: litems.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Card(
                        child: new ListTile(
                          leading: CircleAvatar(
                            child: Image.asset(
                              "${image[index]}",
                              height: 180,
                              width: 220,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text(litems[index]),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
