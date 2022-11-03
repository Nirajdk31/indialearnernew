import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'our_videos.dart';

class AllVideos extends StatelessWidget {
  final bool status;
  static const String tag ='/allVideosScreen.tag';
  const AllVideos({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill
          ),),
          child: SingleChildScrollView(
            child: Column(
              children:[
                SizedBox(height: 9,),
                status ? Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                    const Text("All Videos",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ],
                ) :
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 50),
                  constraints: BoxConstraints(minHeight: 40),
                  child: const Text("All Videos",
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                ),
                SizedBox(height: 10,),
                GridView.builder(
                padding: EdgeInsets.only(bottom: 20),
                physics: NeverScrollableScrollPhysics(),
                itemCount: dummyVideo.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.93,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final data = dummyVideo[index];
                  return  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                    elevation: 5,
                    child: Column(
                      children: [
                        Stack(
                            children:[
                              Image.asset(data.urlImage, fit: BoxFit.fitWidth,height: 125,width: double.infinity,),
                              Container(height: 125,width: double.infinity,
                                decoration: BoxDecoration(color: Colors.black26.withOpacity(0.5),borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))),),
                              const Center(
                                  heightFactor: 2.3,
                                  child: Icon(Icons.play_circle_outline_rounded,size: 50,color: Colors.white),
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
