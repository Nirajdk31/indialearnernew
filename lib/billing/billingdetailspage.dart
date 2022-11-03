import 'package:flutter/material.dart';

class BillingDetailsPage extends StatelessWidget {
  static const String tag = '-/billingdetails';

  const BillingDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_rounded)),
                    const Text(" ",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ],
                ),
                Image.asset('assets/images/thankyou.png'),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  constraints: BoxConstraints(
                      minHeight: size.height * 0.4,
                      minWidth: size.width,
                      maxWidth: size.width),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                          width: size.width,
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/book.png',
                            height: 125,
                            width: 125,
                          )),
                      Transform(
                          transform: Matrix4.translationValues(-10, -25, 0),
                          child: Text(
                            'Padho India'.toUpperCase(),
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
                          )),
                      Text(
                        'Thank you using our services',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.purple.shade700,
                            fontSize: 18),
                      ),
                      Text(
                        'We would like to help you more to unlock your mind\'s power',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.purple.shade700,
                            fontSize: 18),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {
                        },
                        child: Text('Browse more course',
                            style: TextStyle(
                                fontWeight:
                                FontWeight.bold,
                                fontSize: 16)),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            primary: Colors.purple,
                            elevation: 0,
                            fixedSize: Size(
                                size.width * 0.8, 45)),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
