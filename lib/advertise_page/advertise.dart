
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdvertiseTiles extends StatefulWidget {
  const AdvertiseTiles({Key? key}) : super(key: key);

  @override
  State<AdvertiseTiles> createState() => _AdvertiseTilesState();
}

class _AdvertiseTilesState extends State<AdvertiseTiles> {
  int _current = 0;
  List imgList = [
        "assets/images/adv1.jpeg",
        "assets/images/adv2.jpeg",
        "assets/images/adv3.jpeg",
        "assets/images/adv4.jpeg",
        "assets/images/adv5.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          items: imgList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                      child: Image.asset(imgUrl, fit: BoxFit.fill),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            aspectRatio: 2.5,
            initialPage: _current,
            viewportFraction: 0.9,
            onPageChanged: ((index, _) => setState(() {
                _current = index;
              })),
            autoPlay: true,
            reverse: true,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            pauseAutoPlayOnTouch: true,
          ),
        ),
      ],
    );
  }
}
