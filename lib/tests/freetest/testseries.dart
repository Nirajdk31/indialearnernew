import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestSeries extends StatelessWidget {
  static const String tag ='/testSeries.tag';
  const TestSeries({Key? key}) : super(key: key);

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
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
                  height: 130,width: 330,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffecdffe),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Starts at: ", style: TextStyle(fontSize: 12),),
                          Text("25 oct 22, 9:30 am", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Ends at: ", style: TextStyle(fontSize: 12),),
                          Text("30 oct 2022, 9:30 am", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50, width: 40,
                            decoration: BoxDecoration(color: Colors.blueGrey.shade200, borderRadius: BorderRadius.circular(10),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("25", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                                Text("oct", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 10,),
                              Text("Test-1-NCERT Full Test", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Icon(Icons.question_mark),
                                  Text("Qs"),
                                  SizedBox(width: 13,),
                                  Icon(Icons.pending_actions),
                                  Text("200 marks"),
                                  SizedBox(width: 10,),
                                  Icon(Icons.timer),
                                  Text("2 hr"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/mcqPage.tag');
                },
              ),
              SizedBox(height: 20,),
              InkWell(
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
                  height: 180,width: 330,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffecdffe),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Starts at: ", style: TextStyle(fontSize: 12),),
                          Text("25 oct 22, 9:30 am", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text("Ends at: ", style: TextStyle(fontSize: 12),),
                          Text("30 oct 2022, 9:30 am", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 50, width: 40,
                            decoration: BoxDecoration(color: Colors.blueGrey.shade200, borderRadius: BorderRadius.circular(10),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("25", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                                Text("oct", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("Test-2-Previous Year ",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), maxLines: 3,),
                              Text("Questions (Upsc) Based ",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), maxLines: 3,),
                              Text(" Test (Last 25 Years)",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), maxLines: 3,),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Icon(Icons.question_mark),
                                  Text("Qs"),
                                  SizedBox(width: 13,),
                                  Icon(Icons.pending_actions),
                                  Text("200 marks"),
                                  SizedBox(width: 10,),
                                  Icon(Icons.timer),
                                  Text("2 hr"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/mcqPage.tag');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
