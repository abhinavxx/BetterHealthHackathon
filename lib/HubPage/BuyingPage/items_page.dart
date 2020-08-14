import 'package:flutter/material.dart';
import 'package:projectBiyt/HubPage/BuyingPage/item_description.dart';

class BuyingITems extends StatefulWidget {
  @override
  _BuyingITemsState createState() => _BuyingITemsState();
}

class _BuyingITemsState extends State<BuyingITems> {
  List<String> image = [
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/16.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg"
  ];
  List<String> name = [
    "name 1",
    "name 2",
    "name 3",
    "name 4",
    "name 5",
    "name 6",
    "name 7",
    "name 8",
    "name 9",
    "name 10",
    "name 11",
    "name 12",
    "name 13",
    "name 14",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 25.0),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading:
                      IconButton(icon: Icon(Icons.search), onPressed: null),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Text("Explore",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    )),
                SizedBox(width: 7.0),
                Text(
                  "Here!",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description(),
                                settings:
                                    RouteSettings(arguments: image[index])));
                      },
                      child: Card(
                        elevation: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 0, right: 0, top: 0, bottom: 2),
                                child: SizedBox(
                                  height: 140,
                                  child: Image.asset(
                                    image[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              name[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            Text(
                              "Rs. 39.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      )),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
