import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../drawer/drawer_layout.dart';
import '../onboardingscreens/liquidswipescreen.dart';

class OTPScreen extends StatelessWidget {
  static const String tag = '/otpscreen';

  const OTPScreen({Key? key}) : super(key: key);

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
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset(
                        'assets/images/wavetransprent.png',
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 60, right: 10),
                            width: size.width,
                            alignment: Alignment.centerRight,
                            child: Image.asset(
                              'assets/images/book.png',
                              height: 125,
                              width: 125,
                            )),
                        Transform(
                            transform: Matrix4.translationValues(-10, -25, 0),
                            child: Text(
                              'India Learner'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'PlayfairDisplay',
                                color: Colors.purple.shade400,
                              ),
                            )),
                        Transform.translate(
                            offset: Offset(0, -25),
                            child: Text(
                              'Build Super Memory Power',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  color: Colors.purple.shade500,
                                  fontSize: 12,
                                  fontFamily: 'PlayfairDisplay'),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 200),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'OTP Verify',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 50,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(text: 'Please enter  '),
                            TextSpan(
                                text: 'One Time Password',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87)),
                            TextSpan(text: ' sent '),
                            TextSpan(
                                text: '\n +91 9494783993',
                                style: TextStyle(fontWeight: FontWeight.w900))
                          ]),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          width: size.width * 0.75,
                          child: PinCodeTextField(
                              appContext: context,
                              length: 6,
                              onChanged: (value) {},
                              enablePinAutofill: true,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              keyboardType: TextInputType.number,
                              pinTheme: PinTheme.defaults(
                                shape: PinCodeFieldShape.box,
                                activeColor: Colors.black87,
                                selectedColor: Colors.purple,
                                inactiveColor: Colors.black45,
                                activeFillColor: Colors.transparent,
                                selectedFillColor: Colors.transparent,
                                inactiveFillColor: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(text: 'Haven\'t received OTP yet? '),
                          TextSpan(
                              text: ' Resend',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                Fluttertoast.showToast(msg: 'Will resend OTP',toastLength: Toast.LENGTH_SHORT);
                                }),
                          TextSpan(
                              text: ' ➔',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15))
                        ])),
                        SizedBox(height: 20,),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(DrawerLayout.tag);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fixedSize: Size(160, 45)),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.login,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Verify OTP',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/OTP.png',
                          height: size.height*0.3,
                        ),
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
