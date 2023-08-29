import 'package:flutter/material.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds:2000 ),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
        body: Center(
          child: Container(
            child: const Text('E-Commerce APP',
                style: TextStyle(color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Pacifico',)
            ),
          ),
        ),
    );
  }
}
