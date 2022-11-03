import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../videolist/our_videos.dart';

class ImageList extends StatelessWidget {
  const ImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyVideo.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final data = dummyVideo[index];
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black45, width: 0.5)),
            margin: const EdgeInsets.only(right: 15),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      data.urlImage,
                      height: 150,
                      width: 250,
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.topCenter,
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
