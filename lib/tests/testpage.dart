import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:india_learner_app/tests/paidtest/paidtestpage.dart';
import 'package:india_learner_app/tests/quiz/quizpage.dart';
import 'package:india_learner_app/tests/written/writtenpage.dart';

import 'freetest/freetest.dart';

class TestPage extends StatelessWidget {
  static const String tag ='/TestPage.tag';
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Tests', style: GoogleFonts.roboto(
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,width: 150,
                    child: InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.edit),
                            Text("Free Test", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(FreeTestPage.tag);
                      },
                    ),
                  ),
                  Container(
                    height: 80,width: 150,
                    child: InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.monetization_on_sharp),
                            Text("Paid Test", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(PaidTestPage.tag);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,width: 150,
                    child: InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.quiz),
                            Text("Quiz", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(QuizPage.tag);
                      },
                    ),
                  ),
                  Container(
                    height: 80,width: 150,
                    child: InkWell(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.edit),
                            Text("Written", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed(WrittenPage.tag);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 40, width: 100,
        decoration: BoxDecoration(color: Colors.blue.shade300, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: InkWell(
            child: Text('Test history',
              style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
