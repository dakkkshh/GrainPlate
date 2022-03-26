import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _navigatetohome();
  }
_navigatetohome()async{
  await Future.delayed(const Duration(milliseconds: 3000),(){});
  //Navihate to HomePage
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'GrainPlate',)));
  
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Lottie.asset('asset/lottie/splash_screen.json'),
        ),
      ),
    );
  }
}
