import 'package:flutter/material.dart';
import 'package:india_learner_app/signup/signup.dart';

import '../login/loginscreen.dart';
import '../onboardingscreens/liquidswipescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() async{
      Navigator.of(context).pushReplacementNamed(SignupPage.tag);
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/background.png')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/book.png',height: 150,width: 150,),
            Transform(
                transform: Matrix4.translationValues(0, -10, 0),
                child: Text('India Learner'.toUpperCase(),style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,fontFamily: 'PlayfairDisplay',color: Colors.purple.shade400,),)),
            Transform.translate(offset: Offset(0, -10),child: Text('Build Super Memory Power',style: TextStyle(fontStyle: FontStyle.normal,color: Colors.purple.shade500,fontSize: 20,fontFamily: 'PlayfairDisplay'),))
          ],
        ),
      ),
    );
  }
}
