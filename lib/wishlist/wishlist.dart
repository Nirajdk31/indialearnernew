
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../audiolist/audio.dart';
import '../videolist/our_videos.dart';

class WishlistPage extends StatelessWidget {
  static const String tag ='/wishlistPage.tag';
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill
          ),),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  const Text("Payment mode",
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                ],
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(image: DecorationImage(
                    image: AssetImage('assets/images/homepagepngimage.png'),
                    fit: BoxFit.fill
                ),
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final data = dummyVideo[index];
                  return  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                    data.urlImage,
                                    fit: BoxFit.fill,
                                    height: 166,
                                    width: double.infinity,
                                  ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, right: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: const [
                                          Icon(Icons.favorite,color: Colors.red,size: 27,)
                                        ],
                                      ),
                                    ),
                                 ],
                                ),
                            ),
                            Text(data.name,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(data.price,
                              style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.green,),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Colors.green.shade400),
                                    onPressed: (){},
                                    child: const Text("Add to Cart", style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),)
                                  ,),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.blue.shade400),                      onPressed: (){},
                                  child: const Text("Buy now", style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),)
                                  ,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final auddata = dummyAudio[index];
                  return  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16,),
                                      child: Image.asset(
                                      auddata.audioImage,
                                      fit: BoxFit.fill,
                                      height: 140,
                                      width: 140,
                                  ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, right: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: const [
                                          Icon(Icons.favorite,color: Colors.red,size: 27,)
                                        ],
                                      ),
                                    ),
                                 ],
                                ),
                            ),
                            Text(auddata.name,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(auddata.price,
                              style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.green,),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Colors.green.shade400),
                                    onPressed: (){},
                                    child: const Text("Add to Cart", style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),)
                                  ,),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.blue.shade400),                      onPressed: (){},
                                  child: const Text("Buy now", style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold),)
                                  ,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
