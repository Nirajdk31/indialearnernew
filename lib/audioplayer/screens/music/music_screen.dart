import 'package:flutter/material.dart';

import 'components/custom_body.dart';
import 'components/custom_bottom_nav_bar.dart';
import 'components/play_button.dart';


class MusicScreen extends StatelessWidget {
  static const String tag ='/audioPlayerScreen.tag';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [

            //it contain image , background and songs,
            CustomBody(),

            CustomBottomNavBar(),

            PlayButton(),
          ],
        ),
      ),
    );
  }
}
