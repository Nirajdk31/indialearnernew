import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlipCardDemo extends StatelessWidget {
  static const String tag ='/flipCardScreen.tag';
  const FlipCardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/background.png"),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_back_rounded)),
                      const Text("About Us",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                    ],
                  ),
                  const SizedBox(height: 200,),
                  SizedBox(
                    width: 350,
                    height: 310,
                    child: FlipCard(
                      direction: FlipDirection.HORIZONTAL,
                      front: Material(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(24),
                        shadowColor: const Color(0x802196F3).withOpacity(0.2),
                        child: _nameDetailContainer(),
                      ),
                      back: Material(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(24),
                        shadowColor: const Color(0x802196F3).withOpacity(0.2),
                        child: _socialDetailContainer(),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _nameDetailContainer() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: 103,
        width: 800,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                leading: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/man.jpg"),
                      )),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(top: 17),
                  child: Text(
                    "Niraj Khanorkar",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Android Developer",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.orange.shade300,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24),),
        ),
      ),
      Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 14, left: 15, right: 13),
            child: Text(
              "A forward-thinking developer offering more than four years of exoerience building, integrating, testing, and supporting Android application for mobile and tablet devices on the Android platform seeks position a too technology firm.",
              style: TextStyle(color: Colors.black45, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.black45,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  "Nagpur",
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ],
            ),
          ),
          Text("[Please tap to flip]", style: TextStyle(fontSize: 12, color: Colors.grey),),
        ],
      ),
    ],
  );
}

Widget _socialDetailContainer() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        height: 103,
        width: 800,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListTile(
                leading: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/man.jpg"),
                      )),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(top: 17),
                  child: Text(
                    "Niraj Khanorkar",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Android Developer",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red.shade300,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24),),
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 15, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.mail,
                  color: Colors.black45,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  "niraj@gmail.com",
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 15, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                ImageIcon(
                  AssetImage("assets/images/instagram.png"),
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox(width: 5),
                Text(
                  "niraj_khanorkar",
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 15, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                ImageIcon(
                  AssetImage("assets/images/facebook.png"),
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox(width: 5),
                Text(
                  "Niraj Khanorkar",
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 15, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                ImageIcon(
                  AssetImage("assets/images/linkedin-logo.png"),
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox(width: 5),
                Text(
                  "NirajDk",
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
