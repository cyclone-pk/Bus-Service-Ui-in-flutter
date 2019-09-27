import 'package:flutter/material.dart';
import 'themedata.dart';
import 'onlineTicketBooking.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Material(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'USERNAME',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Material(
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'PASSWORD',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 15.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 2.0),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Container(
                    height: 40.0,
                    child: MaterialButton(
                        elevation: 6.0,
                        shape: StadiumBorder(),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18.0),
                        ),
                        color: secondryColor,
                        minWidth: double.infinity,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TicketBooking()));
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    'or Login With',
                    style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'Images/fblogo.png',
                      height: 25.0,
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Image.asset(
                      'Images/google.png',
                      height: 25.0,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
