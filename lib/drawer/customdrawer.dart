import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:india_learner_app/wishlist/wishlist.dart';
import 'package:rxdart/rxdart.dart';

import '../Category_IL/categories_il_list.dart';
import '../flipcard/flipcarddemo.dart';
import '../image_gallery/all_images.dart';
import '../mypurchase/mypurchasescreen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> with SingleTickerProviderStateMixin<CustomDrawer>{
  late AnimationController _animationController;
  late StreamController<bool> isSideBarOpenedStreamController;
  late Stream<bool> isSideBarOpenedStream;
  late StreamSink<bool> isSideBarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 250);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _animationDuration);
    isSideBarOpenedStreamController = PublishSubject<bool>();
    isSideBarOpenedStream = isSideBarOpenedStreamController.stream;
    isSideBarOpenedSink = isSideBarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSideBarOpenedStreamController.close();
    isSideBarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if(isAnimationCompleted) {
      isSideBarOpenedSink.add(false);
      _animationController.reverse();
    }else {
      isSideBarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final size  = MediaQuery.of(context).size;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSideBarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data! ? 0 : -screenWidth,
          right: isSideBarOpenedAsync.data! ? 0 : screenWidth - 35,

          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  constraints: BoxConstraints(maxWidth: screenWidth*0.75),
                  color: const Color(0xffEBDEF0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //const SizedBox(height: 20,),
                      Container(
                        height: 200,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.lighten),
                                  fit: BoxFit.fill,
                                  image: const AssetImage("assets/images/a-book-3088775_1920.jpg"),

                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 200,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 110),
                                child: ListTile(
                                  title: const Text("Your Account",
                                    style: TextStyle(color: Colors.white,
                                        fontSize: 19, fontWeight: FontWeight.w800),),
                                  subtitle: const Text("youraccount@gmail.com",
                                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),),
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(35),
                                    child: Image.asset('assets/images/man.jpg',height: 60,width: 60,fit: BoxFit.fill,),
                                    clipBehavior: Clip.antiAlias,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 10,
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                        indent: 16,
                        endIndent: 16,
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.category_outlined, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap:() {
                              Navigator.of(context).pushNamed(CategoriesILPage.tag);
                            },
                            child: Text("Select Category", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.home, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          Text("Home", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.add, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          InkWell(
                            child: Text("Plus Courses",
                                style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                            onTap:() {
                              Navigator.of(context).pushNamed(WishlistPage.tag);
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.lock_open_rounded, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/allVideosScreen.tag');
                            },
                              child: Text("Free live",
                                style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.save, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          InkWell(
                            child: Text("Free classes/courses",
                                style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                            onTap: () {
                              Navigator.pushNamed(context, '/allVideosScreen.tag');
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.subscriptions, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          Text("Get Subscription", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.download, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          Text("Downloads", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      // Row(
                      //   children: [
                      //     SizedBox(width: 30,),
                      //     Icon(Icons.person, color: Colors.grey.shade700, size: 20,),
                      //     SizedBox(width: 20,),
                      //     Text("My Account", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                      //   ],
                      // ),
                      // const SizedBox(height: 25,),
                      // Row(
                      //   children: [
                      //     SizedBox(width: 30,),
                      //     Icon(Icons.restore, color: Colors.grey.shade700, size: 20,),
                      //     SizedBox(width: 20,),
                      //     InkWell(
                      //         onTap:() {
                      //           Navigator.of(context).pushNamed(MyPurchase.tag);
                      //         },
                      //         child: Text("Purchase History", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),)),
                      //   ],
                      // ),
                      // const SizedBox(height: 25,),
                      // Row(
                      //   children: [
                      //     SizedBox(width: 30,),
                      //     Icon(Icons.image, color: Colors.grey.shade700, size: 20,),
                      //     SizedBox(width: 20,),
                      //     InkWell(
                      //         onTap:() {
                      //           Navigator.of(context).pushNamed(AllImages.tag);
                      //         },
                      //         child: Text("Our Gallery", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),)),
                      //   ],
                      // ),
                      // const SizedBox(height: 25,),
                      // Row(
                      //   children: [
                      //     SizedBox(width: 30,),
                      //     Icon(Icons.share, color: Colors.grey.shade700, size: 20,),
                      //     SizedBox(width: 20,),
                      //     Text("Share & Earn", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                      //   ],
                      // ),
                      //const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.help, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          Text("Help Support", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.person_pin_rounded, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          InkWell(
                            onTap:() {
                              Navigator.of(context).pushNamed(FlipCardDemo.tag);
                            },
                            child: Text("About us", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),)),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Icon(Icons.settings, color: Colors.grey.shade700, size: 20,),
                          SizedBox(width: 20,),
                          Text("Settings", style: TextStyle(color: Colors.grey.shade600, fontSize: 17, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 65,),
                      Divider(
                        height: 1,
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                        indent: 16,
                        endIndent: 16,
                      ),
                      Container(
                        color: Colors.red.shade400,
                        padding: const EdgeInsets.only(top: 20,bottom: 14.2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  const [
                            SizedBox(width: 30,),
                            Icon(Icons.exit_to_app, color: Colors.white, size: 30,),
                            SizedBox(width: 20,),
                            Text("Logout", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, -0.92),
                child: GestureDetector(
                  onTap: (){
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      height: 100,
                      width: 35,
                      padding: EdgeInsets.only(left: 5),
                      color: Color(0xffEBDEF0),
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Color(0xff9B59B6),
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width-1, height/2-20, width, height/2);
    path.quadraticBezierTo(width+1, height/2+20, 10, height-16);
    path.quadraticBezierTo(0, height-8, 0, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}

