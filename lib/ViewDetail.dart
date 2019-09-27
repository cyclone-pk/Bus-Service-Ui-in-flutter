import 'package:flutter/material.dart';
import 'themedata.dart';

class viewDetail extends StatefulWidget {
  @override
  _viewDetailState createState() => _viewDetailState();
}

class _viewDetailState extends State<viewDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: primarycolor,
        elevation: 0.0,
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Stack(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('Images/google.png'),
                                backgroundColor: Colors.red,
                                radius: 25.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Driver',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('Images/google.png'),
                                backgroundColor: Colors.red,
                                radius: 25.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Conductor',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Rating : ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: -50.0,
                right: 150.0,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('Images/Audi.png'),
                  radius: 50.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Text(
              'Bhagyarekha Deluxe',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Largefont,
                  color: primarycolor),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'khatmandu',
                  style: TextStyle(fontSize: 20.0),
                ),
                Icon(Icons.arrow_forward),
                Text('Chandragadi', style: TextStyle(fontSize: 20.0))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: MaterialButton(
              shape: StadiumBorder(),
              elevation: 6.0,
              child: Text(
                'Book Now',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16.0),
              ),
              onPressed: () {},
              color: secondryColor,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6.0),
            width: double.infinity,
            child: Text(
              'AMENITIES',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16.0),
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black)),
                color: secondryColor),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.tv,
                            size: 60.0,
                            color: primarycolor,
                          ),
                          Text(
                            'TV',
                            style: TextStyle(
                                color: primarycolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.wifi,
                            size: 60.0,
                            color: primarycolor,
                          ),
                          Text(
                            'WIFI',
                            style: TextStyle(
                                color: primarycolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.tv,
                            size: 60.0,
                            color: primarycolor,
                          ),
                          Text(
                            'TV',
                            style: TextStyle(
                                color: primarycolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.wifi,
                            size: 60.0,
                            color: primarycolor,
                          ),
                          Text(
                            'WIFI',
                            style: TextStyle(
                                color: primarycolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.tv,
                            size: 60.0,
                            color: primarycolor,
                          ),
                          Text(
                            'TV',
                            style: TextStyle(
                                color: primarycolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.wifi,
                            size: 60.0,
                            color: primarycolor,
                          ),
                          Text(
                            'WIFI',
                            style: TextStyle(
                                color: primarycolor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
