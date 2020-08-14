import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectBiyt/HubPage/BookingPage/book_appointments.dart';

class BookingShops extends StatefulWidget {
  @override
  _BookingShopsState createState() => _BookingShopsState();
}

class _BookingShopsState extends State<BookingShops> {
  @override
  Widget _shopsList(BuildContext context, int i) {
    var val = i + 1;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Appointments()));
            });
          },
          child: Container(
              width: width * 0.9,
              height: height * 0.15,
              child: Card(
                child: Row(
                  children: [
                    Container(
                        height: height * 0.15,
                        width: 100.0,
                        child: Card(
                          color: Colors.indigo[50],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Doctor $val',
                            style: TextStyle(fontSize: 25.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('$val' '0kms away',
                              style: TextStyle(fontSize: 15.0))
                        ],
                      ),
                    )
                  ],
                ),
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              )),
        ),
        SizedBox(height: 10.0),
      ],
    );
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: width * 0.06, vertical: height * 0.06),
            width: width * 0.9,
            height: height * 0.1,
            child: Card(
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 35.0,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(
              horizontal: width * 0.06,
            ),
            child: Text('Doctor Nearby',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
          ),
          Flexible(
            child: Container(
                child: ListView.builder(
              padding: EdgeInsets.all(10.0),
//              primary: false,
//              shrinkWrap: true,
              itemBuilder: _shopsList, itemCount: 5,
            )),
          ),
        ],
      ),
    );
  }
}
