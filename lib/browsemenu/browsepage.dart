import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../audiolist/audio_list.dart';
import '../videolist/ourvideos_list.dart';

class BrowsePage extends StatelessWidget {
  static const String tag ='/browsePage.tag';
  const BrowsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Browse', style: GoogleFonts.roboto(
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
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 10,right: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Educator/Teacher',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                      height: 130, width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage('assets/images/man1.jpg'), fit: BoxFit.contain),
                          Text('Gaurav Kumar',  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
                      height: 130, width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage('assets/images/man1.jpg'), fit: BoxFit.cover),
                          Text('Akshay Kumar',  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text('Ongoing Courses',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 300,
                  child: const OurVideosList(),
                ),
                SizedBox(height: 20,),
                Text('Upcoming Courses',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 280,
                  child: const AudioList(),
                ),
                SizedBox(height: 20,),
                Text('Courses Completed',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 280,
                  child: const AudioList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
