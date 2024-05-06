
import 'package:blood_app/booking.dart';
import 'package:blood_app/share.dart';
import 'package:blood_app/signup_page.dart';
import 'package:blood_app/splash.dart';
import 'package:blood_app/survey.dart';
import 'package:flutter/material.dart';


import 'login.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
     routes:{
      '/':(context) => const Splash(),
      '/login':(context) => const Login(),
      '/signup': (context) => SignUpPage(),
      '/booking': (context) => const Booking(),
      '/survey':(context) => const Survey(),
      '/share': (context) => const ShareScreen(),
     
    },
  ));
}
