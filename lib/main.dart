import 'package:flutter/material.dart';
import 'Login.dart';
import 'onlineTicketBooking.dart';
import 'Availablebuses.dart';
import 'ViewDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
