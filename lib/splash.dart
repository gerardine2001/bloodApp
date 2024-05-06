import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


@override
  void initState() {
    
    startTimer();
    super.initState();
  }


  startTimer(){
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);

  }
  route(){
    Navigator.of(context).pushReplacementNamed('/login');
  }

 @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/blood.png"),
              const SizedBox(
                height: 20,
        
              ),
              const Text("Blood Donation Application", 
              style: TextStyle(fontSize: 30) ,),
            ],
          ),
        
        ),
      ),
    );

  }

  
}