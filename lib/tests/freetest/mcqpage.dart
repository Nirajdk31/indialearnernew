import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class McqPage extends StatelessWidget {
  static const String tag ='/mcqPage.tag';
  const McqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCQ type ques', style: GoogleFonts.roboto(
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
          child: Column(
            children: const [
              Text("Mahakal temple is situated on the bank of which river?"),

            ]

          ),
        ),
      ),
    );
  }
}
