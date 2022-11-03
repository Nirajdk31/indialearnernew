import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../videolist/our_videos.dart';

class AllImages extends StatelessWidget {
  final bool status;
  static const String tag = 'allImagesScreen.tag';

  const AllImages({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                    const Text("Our Images",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ],
                ) :
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 50),
                  constraints: BoxConstraints(minHeight: 40),
                  child: const Text("Our Images",
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                ),
                SizedBox(height: 10,),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: dummyVideo.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      final data = dummyVideo[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 1),
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20)),
                                child:
                                    Image.asset(data.urlImage, fit: BoxFit.fill),
                              ),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    "Lorem Ipsum",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
