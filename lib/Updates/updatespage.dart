import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdatesPage extends StatelessWidget {
  static const String tag ='/UpdatesPage.tag';
  const UpdatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updates', style: GoogleFonts.roboto(
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
          padding: EdgeInsets.only(top: 40, left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('No class today', style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text('Math class starting today', style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Text('Download monthly magazine', style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
