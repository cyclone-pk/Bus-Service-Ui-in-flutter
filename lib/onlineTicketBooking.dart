import 'package:flutter/material.dart';
import 'themedata.dart';
import 'Availablebuses.dart';

class TicketBooking extends StatefulWidget {
  @override
  _TicketBookingState createState() => _TicketBookingState();
}

class _TicketBookingState extends State<TicketBooking> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 5.0,
                ),
                CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 5.0,
                ),
                CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'ONLINE TICKET BOOKING',
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: Largefont,
                    fontWeight: FontWeight.bold),
              ),
            ),
            height: 45.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border(
                    top: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black))),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11.0, horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'From',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    title: Text(
                      'kathmandu',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Largefont,
                          color: Colors.blue.shade900),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      'To',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade700),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    title: Text(
                      'chandragadhi',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Largefont,
                          color: Colors.blue.shade900),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25.0),
            width: MediaQuery.of(context).size.width / 3 * 2,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Journey Date',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.date_range,
                        size: 50.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Tuesday',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Largefont,
                                  color: Colors.blue.shade900),
                            ),
                            Text(
                              'Asoj 2, 2075',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Largefont,
                                  color: Colors.blue.shade900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Bus Type',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  height: 30.0,
                  decoration: BoxDecoration(border: Border.all()),
                  child: DropdownButton(
                    value: 'one',
                    hint: Text(
                      'Example',
                      style: TextStyle(color: Colors.blue.shade900),
                    ),
                    iconEnabledColor: Colors.black,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 30.0,
                    items: [
                      DropdownMenuItem(
                        child: Text('Bus Type One'),
                        value: 'one',
                      ),
                      DropdownMenuItem(
                        child: Text('Bus Type two'),
                        value: 'two',
                      ),
                      DropdownMenuItem(
                        child: Text('Bus Type three'),
                        value: 'three',
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            width: double.infinity,
            height: 40.0,
            child: MaterialButton(
                elevation: 6.0,
                shape: StadiumBorder(),
                color: secondryColor,
                child: Text(
                  'CHECK AVALIBILITY',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FarePage()));
                }),
          )
        ],
      )),
    );
  }
}
