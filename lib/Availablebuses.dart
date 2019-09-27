import 'package:flutter/material.dart';
import 'ViewDetail.dart';
import 'themedata.dart';

class FarePage extends StatefulWidget {
  @override
  _FarePageState createState() => _FarePageState();
}

class _FarePageState extends State<FarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primarycolor,
      ),
      body: SafeArea(
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: primarycolor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.add_location,
                              size: 30.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Khatmandu',
                              style: TextStyle(
                                  fontSize: Largefont, color: Colors.white),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 80.0),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.add_location,
                              size: 30.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Chandragadhi',
                              style: TextStyle(
                                  fontSize: Largefont, color: Colors.white),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.date_range,
                                size: 30.0,
                                color: Colors.white,
                              ),
                              Text(
                                '18 September,2019',
                                style: TextStyle(
                                    fontSize: Largefont, color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                child: Padding(
              padding: const EdgeInsets.only(top: 170.0),
              child: ListView.builder(
                itemCount:
                    5, //here will the total number of bus this number can be get from api
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white, border: Border.all()),
                    margin:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  'Bhagyarekha Deluxe',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24.0,
                                      color: primarycolor),
                                ),
                              ),
                              Text(
                                'Type: AC',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: fontgrey),
                              ),
                              Text('6 seats',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: fontgrey)),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, top: 10.0, bottom: 10.0),
                                child: Text('RS 1400',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Largefont,
                                        color: primarycolor)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.music_note, color: fontgrey),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Icon(Icons.battery_charging_full,
                                        color: fontgrey)
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Image.asset('Images/Audi.png'),
                                width: 100.0,
                                height: 80.0,
                                margin:
                                    EdgeInsets.only(right: 10.0, bottom: 20.0),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => viewDetail()));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 6.0),
                                  width: 100.0,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      color: Colors.grey.shade200),
                                  child: Text(
                                    'VIEW DETAILS',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
