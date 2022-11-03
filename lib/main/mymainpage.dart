
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:india_learner_app/Updates/updatespage.dart';
import 'package:india_learner_app/browsemenu/browsepage.dart';
import 'package:india_learner_app/tests/testpage.dart';
import 'package:provider/provider.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

import '../audiolist/all_audios.dart';
import '../home/homepage.dart';
import '../home/homepageprovider.dart';
import '../mywallet/mywalletscreen.dart';
import '../thankyou/orderstatusscreen.dart';
import '../videolist/all_videos.dart';
import '../videomeet/videomeetscreen.dart';
import '../wishlist/wishlist.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  @override
  Widget build(BuildContext context) {
    final choice = Provider.of<MobileHomePageProvider>(context);

    Widget screenWidget() {
      switch(choice.index){
        case 0:
          return const HomePage();
        case 1:
          return const TestPage();
        case 2:
          return const BrowsePage();
        case 3:
          return const UpdatesPage();
        case 4:
          return const WishlistPage();
        default:
          return const HomePage();
      }
    }

    return SafeArea(
      child: Scaffold(
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
            actionButtonDetails: SCActionButtonDetails(color: Colors.purple, icon: Icon(Icons.add), elevation: 4),
            items: [
          SCBottomBarItem(icon: Icons.home, title: "Home", onPressed: () {
            Provider.of<MobileHomePageProvider>(context, listen: false)
              .changeIndex(0);}),
          SCBottomBarItem(icon: Icons.edit, title: "Tests", onPressed: () {
                Provider.of<MobileHomePageProvider>(context, listen: false)
                    .changeIndex(1);
              }),
          SCBottomBarItem(icon: Icons.open_in_browser, title: "Browse", onPressed: () {
            Provider.of<MobileHomePageProvider>(context, listen: false)
                .changeIndex(2);
          }),
          SCBottomBarItem(icon: Icons.notifications, title: "Updates", onPressed: () {
            Provider.of<MobileHomePageProvider>(context, listen: false)
                .changeIndex(3);
          }),
          ],
          circleItems: [
           SCItem(icon: const Icon(Icons.favorite), onPressed: () {
            Provider.of<MobileHomePageProvider>(context, listen: false)
                .changeIndex(4);
          }),
           SCItem(icon:const Icon(Icons.wallet_giftcard), onPressed: () {
            Navigator.of(context).pushNamed(MyWalletScreen.tag);
          }),
           SCItem(icon: const Icon(Icons.shopping_cart_rounded), onPressed: () {
            Navigator.of(context).pushNamed(PaymentStatusPage.tag);
          }),
         ],
        ),
          child: screenWidget(),
       ),
      )
    );
  }
}
