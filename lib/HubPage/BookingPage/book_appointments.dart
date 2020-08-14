import 'package:flutter/material.dart';

class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget _slotsList(BuildContext context, int i) {
    var val = i + 1;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
            width: width * 0.9,
            height: height * 0.1,
            child: Card(
              child: Row(
                children: [
                  Container(
                      height: height * 0.15,
                      width: 100.0,
                      child: Card(
                        color: Colors.green,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$val' ':00-' '${val + 1}' ':00 PM',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            )),
        SizedBox(height: 10.0),
      ],
    );
  }

  Widget _bookedslotsList(BuildContext context, int i) {
    var val = i + 7;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
            width: width * 0.9,
            height: height * 0.1,
            child: Card(
              child: Row(
                children: [
                  Container(
                      height: height * 0.15,
                      width: 100.0,
                      child: Card(
                        color: Colors.red,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$val' ':00-' '${val + 1}' ':00 PM',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            )),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: width * 0.06, vertical: height * 0.06),
                  width: width * 0.2,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.redAccent[100],
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/doctor.jpg'),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Christine James',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.06,
              ),
              child: Text('Available Slots',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Flexible(
              child: Container(
                  child: ListView.builder(
                padding: EdgeInsets.all(10.0),
//              primary: false,
//              shrinkWrap: true,
                itemBuilder: _slotsList, itemCount: 5,
              )),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.06,
              ),
              child: Text('Booked Slots',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Flexible(
              child: Container(
                  child: ListView.builder(
                padding: EdgeInsets.all(10.0),
//              primary: false,
//              shrinkWrap: true,
                itemBuilder: _bookedslotsList, itemCount: 4,
              )),
            ),
          ],
        ));
  }
}
