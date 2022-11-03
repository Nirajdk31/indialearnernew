// import 'package:flutter/material.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
//
// import '../login/loginscreen.dart';
//
// class LiquidSwipeScreen extends StatelessWidget {
//   static const String tag ='/liquidSwipeScreen.tag';
//
//   LiquidSwipeScreen({Key? key}) : super(key: key);
//   LiquidController controller = LiquidController();
//
//   @override
//   Widget build(BuildContext context) {
//     final pages = [
//       Container(
//         height: double.infinity,
//         width: double.infinity,
//         color: Colors.blue.shade100,
//         child: Container(
//           //padding: EdgeInsets.only(left: 270,right: 30,top: 712,bottom: 0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(child: Image.asset("assets/images/homepagepngimage.png")),
//               Padding(
//                 padding: const EdgeInsets.only(left: 8.0,),
//                 child: ElevatedButton(onPressed: () {
//                   Navigator.of(context).pushNamed(LoginScreen.tag);},
//                   child: const Text("Skip"),
//
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//
//       Container(
//         height: double.infinity,
//         width: double.infinity,
//         color: Colors.green.shade100,
//         child: Container(
//           //padding: EdgeInsets.only(left: 270,right: 30,top: 712,bottom: 0),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(child: Image.asset("assets/images/thankyou.png")),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 8.0),
//                     child: ElevatedButton(onPressed: () {
//                     Navigator.of(context).pushNamed(LoginScreen.tag);},
//                  child: const Text("Skip"),),
//                   ),
//            ],
//          ),
//         ),
//       ),
//       Container(
//       height: double.infinity,
//       width: double.infinity,
//       color: Colors.red.shade100,
//         child: Container(
//           child: Image.asset("assets/images/paymentsuccess.png"),
//         ),
//         ),
//     ];
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             LiquidSwipe(
//               enableLoop: false,
//               pages: pages,
//               liquidController: controller,
//           ),
//             Positioned(
//               right: 10,
//               bottom: 0,
//               child: ElevatedButton(onPressed: () {
//                 if( controller.currentPage < pages.length-1){
//                   controller.animateToPage(page: controller.currentPage+1);
//                 }else{
//                   Navigator.of(context).pushNamed(LoginScreen.tag);
//                 }
//                 },
//                 child: const Text("next"),),
//             ),
//           ]
//         ),
//       ),
//     );
//   }
// }
