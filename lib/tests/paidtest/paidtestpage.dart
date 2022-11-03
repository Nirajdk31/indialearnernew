import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaidTestPage extends StatelessWidget {
  static const String tag ='/paidTestPage.tag';
  const PaidTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paid Tests', style: GoogleFonts.roboto(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white,
        ),),
        backgroundColor: Colors.purple.shade200,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill, opacity: 0.7,
        ),),
        child: SingleChildScrollView(
          child: Center(
            heightFactor: 20,
            child: Container(
              height: 60,width: 200,
              child: InkWell(
                child: Card(
                  color: Colors.purple.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),),
                  elevation: 10,
                  child: Center(child: Text("Get Subscription", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)),
                ),
                onTap: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
