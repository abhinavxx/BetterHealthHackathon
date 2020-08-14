import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Cart ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.black)),
                      TextSpan(
                          text: ' Items',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Image.asset("assets/watch1.jpg"),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(left: 17),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text("Sonata Watch",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Item x 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: Column(
                            children: [
                              Text("Price",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Rs. 4000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.green)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Image.asset("assets/watch2.jpg"),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(left: 17),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text("Rolex Watch",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Item x 1",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          child: Column(
                            children: [
                              Text("Price",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: Colors.black)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Rs. 9000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.green)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
              child: Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.orangeAccent,
                  child: Text("Order Now",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black)),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
