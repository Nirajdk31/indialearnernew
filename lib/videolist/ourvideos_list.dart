import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'our_videos.dart';

class OurVideosList extends StatelessWidget {
  const OurVideosList({Key? key}) : super(key: key);

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
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Image.asset(
                          data.urlImage,
                          height: 150,
                          width: 250,
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.topCenter,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Chip(
                                backgroundColor: Colors.purple.shade200,
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, bottom: 5, top: 5),
                                elevation: 0,
                                label: Text(
                                  data.category,
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Chip(
                                backgroundColor:
                                    data.version.contains('Paid') == true
                                        ? Colors.red.shade300
                                        : Colors.teal.shade300,
                                elevation: 0,
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, bottom: 5, top: 5),
                                label: Text(
                                  data.version,
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          data.version.contains('Paid') == true
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Spacer(),
                                    Chip(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(7))),
                                      backgroundColor: Colors.blueGrey,
                                      elevation: 0,
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5, bottom: 5, top: 5),
                                      label: Text(
                                        data.price,
                                        style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.7),borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8.0, top: 3),
                          child: Text(
                            data.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        const SizedBox(height: 3),
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
                        const SizedBox(height: 3),
                        data.version.contains('Free') == true
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 114,
                                    height: 50,
                                    color: Colors.green.shade100,
                                    child: const Icon(
                                      Icons.arrow_downward_sharp,
                                      size: 20,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade100,
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    width: 114,
                                    height: 50,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.pushNamed(context, '/videoPlayerScreen.tag');
                                      },
                                      child: const Icon(
                                        Icons.play_arrow_rounded,
                                        size: 20,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            : Container(
                                alignment: Alignment.center,
                                width: 228,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade100,
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.black54,
                                        size: 20,
                                      ),
                                      onPressed: () {},
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Buy Now",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
