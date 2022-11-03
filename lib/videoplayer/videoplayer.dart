import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:india_learner_app/videoplayer/sectionlist.dart';

class VideoPlayerUi extends StatelessWidget {
  static const String tag ='/videoPlayerScreen.tag';
  const VideoPlayerUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
                opacity: 0.5,
            ),
            ),
            child: Column(
              children: [
                Stack(
                  children:[
                  Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/javascript.jpg'),
                            fit: BoxFit.fill
                        ),
                        border: Border.all(color: Colors.black26, width: 0.5)),
                  ),
                  Row(
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
                      ],
                    ),
                ],),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  child: Text(
                    "MERN Stack Front to Back:  Full Stack React, Redux & Node.js",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Lectures",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      ),
                      Icon(
                        Icons.arrow_circle_down,
                        color: Colors.black45,
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black12,
                  height: 10,
                  endIndent: 10,
                  indent: 10,
                  thickness: 1,
                ),
                Container(
                  height: size.height*0.6,
                  child: ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: vidSection.length,
                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 40),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final sec = vidSection[index];

                      return Column(
                       children: [
                        Row(
                          children: [
                            const Text(
                              "Section ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 15),
                            ),
                            Text(
                              sec.number,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              sec.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: sec.videolist.length,
                            shrinkWrap: true,
                            itemBuilder: (context, i) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: Text(
                                      (i + 1).toString(),
                                      style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          constraints: BoxConstraints(
                                              maxWidth: size.width * 0.6),
                                          child: Text(
                                            sec.videolist[i].title,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54,
                                                fontSize: 17),
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                          ),alignment: Alignment.centerLeft,),
                                      Text(
                                        sec.videolist[i].courseTime,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54,
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                    child: InkWell(
                                        child: const Icon(Icons.arrow_circle_down, color: Colors.black54,),
                                        onTap: () {},
                                    ),
                                   ),

                                ],
                              );
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                     );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
