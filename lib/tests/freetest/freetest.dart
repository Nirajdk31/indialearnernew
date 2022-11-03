import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FreeTestPage extends StatelessWidget {
  static const String tag ='/freeTestPage.tag';
  const FreeTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Free Tests', style: GoogleFonts.roboto(
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
            children: [
              SizedBox(height: 100,),
              InkWell(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      height: 180,width: 330,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Start Date"),
                              Text("25/10/2022"),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("End Date"),
                              Text("25/10/2022"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      height: 125,width: 330,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Free Practice Test Series", style: TextStyle(fontSize: 15),),
                          Text("Free Practice Test Series", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/testSeries.tag');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
