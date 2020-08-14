

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          title: Text ('Your Assistant'),

        ),
        body: SingleChildScrollView(


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,



              children: <Widget>[



                Container (



                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/helpstop.jpg'),

                        fit: BoxFit.cover,
                    )
                  ),


                ),

                Card(
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),


                    child: ListTile(
                      leading: Icon(
                        Icons.report_problem,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'SOCIAL DISTANCING',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                          height: 2,

                        ),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 25.0),

                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'STAY HOME',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                            height: 2,
                            fontFamily: 'Source Sans Pro'),
                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.help,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'WEAR MASK',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal.shade900,

                            fontFamily: 'Source Sans Pro'),

                      ),
                    )),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 25.0),

                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'STAY CONNECTED',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    )),

                Card(
                    margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 25.0),

                    child: ListTile(
                      leading: Icon(
                        Icons.work,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'WORK FROM HOME',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                            height: 2,
                            fontFamily: 'Source Sans Pro'),

                      ),
                    )),
                Container (



                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/update covid.jpg'),

                        fit: BoxFit.cover,
                      )
                  ),


                ),
                Container (



                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/vaccine.jpg'),

                        fit: BoxFit.cover,
                      )
                  ),


                ),
                Container (



                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/news1.jpg'),

                        fit: BoxFit.cover,
                      )
                  ),


                ),

                Container (



                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/testess.jpg'),

                        fit: BoxFit.cover,
                      )
                  ),


                ),
                Container (



                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/contain.jpg'),

                        fit: BoxFit.cover,
                      )
                  ),


                ),
                Container (



                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/image.jpg'),

                        fit: BoxFit.cover,
                      )
                  ),


                ),
                Container (



                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.all(10.0),
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/live stats.jpg'),

                        fit: BoxFit.cover,
                      )
                  ),


                ),

              ],
            )),
      ),
    );
  }
}
