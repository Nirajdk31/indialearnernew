import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:india_learner_app/home/homepage.dart';
import '../otp/otpscreen.dart';

class LoginScreen extends StatefulWidget {
  static const String tag = '-/loginscreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  Future login(String username,String password)async{
    var url = "https://indialearner.in/api/login.php";
    var response = await http.post(Uri.parse(url),body: {
      "email" : _email.text,
      "password" : _password.text,
    });
    var data = json.decode(response.body);
    if (data['Status_code'] =="200") {
      Fluttertoast.showToast(
        msg: "Login Successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16,
      );
      Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      Fluttertoast.showToast(
        msg: "Email/Password Incorrect!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      /*appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,leading: Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 8.0),
        child: InkWell(
          splashColor: Colors.purple.shade100,

          borderRadius: BorderRadius.circular(30),
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(color: Colors.black45,borderRadius: BorderRadius.circular(30)),
            child: Icon(Icons.arrow_back),
          ),
        ),
      )),*/
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset('assets/images/wavetransprent.png')),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 60,right: 10),
                            width: size.width,
                            alignment: Alignment.centerRight,
                            child: Image.asset('assets/images/book.png',height: 125,width: 125,)),
                        Transform(
                            transform: Matrix4.translationValues(-10, -25, 0),
                            child: Text('India Learner'.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'PlayfairDisplay',color: Colors.purple.shade400,),)),
                        Transform.translate(offset: Offset(0, -25),child: Text('Build Super Memory Power',style: TextStyle(fontStyle: FontStyle.normal,color: Colors.purple.shade500,fontSize: 12,fontFamily: 'PlayfairDisplay'),))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 70,),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                          child: TextFormField(
                            controller: _email,
                            autofocus: false,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                              ),
                              isCollapsed: true,
                              labelText: 'Email',
                              contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                              floatingLabelStyle: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                          child: TextFormField(
                            controller: _password,
                            autofocus: false,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                              ),
                              isCollapsed: true,
                              labelText: 'Password',
                              contentPadding: EdgeInsets.only(top: 15,bottom:15,left: 15,right: 15),
                              floatingLabelStyle: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Center(
                          child: SizedBox(
                            height: 45,
                            width: 100,
                            child: ElevatedButton(
                              onPressed: (){
                                login(_email.text, _password.text);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black38,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                              ),
                              child: const Text('Submit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 35,),
                        Text.rich(
                          TextSpan(
                              children: [
                                TextSpan(text: 'By continuing you agree to our '),
                                TextSpan(text: '\n Terms of Services',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.deepPurple)),
                                TextSpan(text: ' and'),
                                TextSpan(text: ' Conditions',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.deepPurple)),
                              ]
                          ),textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6)),),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/login.png',height: 300,),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


