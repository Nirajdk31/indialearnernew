import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'audio.dart';

class AllAudios extends StatelessWidget {
  final bool status;
  static const String tag ='/allAudiosScreen.tag';
  const AllAudios({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill
          ),),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 9,),
                status ? Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8,left: 8),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_back_rounded,)),
                    ),
                    const Text("All Audios",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ],
                ) : Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 50),
                  constraints: BoxConstraints(minHeight: 40),
                  child: const Text("All Audios",
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                ),
                SizedBox(height: 10,),
                GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(bottom: 20),
                itemCount: dummyAudio.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3/3.25,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final data = dummyAudio[index];
                  return  Card(
                    margin: EdgeInsets.only(left: 8,right: 8,top: 6,bottom: 6),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                    elevation: 5,
                    child: Column(
                      children: [
                        Stack(
                          children:[
                            Image.asset(data.audioImage,height: 125,width: double.infinity,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                              height: 125,width: double.infinity,
                            alignment: Alignment.center,
                              child: Icon(Icons.play_arrow_rounded ,size: 40,color: Colors.white,),
                            ),
                          ],
                        ),
                        Text(data.name,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star_border,
                                    color: Colors.black87,
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    data.rating,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 3),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.access_time,
                                    color: Colors.black87,
                                    size: 18,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    data.courseTime,
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],  //just for testing, will fill with image later
                    ),
                  );
                },
              ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
