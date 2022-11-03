import 'package:flutter/material.dart';

import '../main/mymainpage.dart';
import 'customdrawer.dart';

class DrawerLayout extends StatelessWidget {
  static const String tag = '/drawerScreen.dart';
  const DrawerLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          MyMainPage(),
          CustomDrawer(),
        ],
      ),
    );
  }
}
