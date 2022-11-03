import 'package:flutter/material.dart';

import '../../../clippers/single_curved_clipper.dart';
import '../../../constants/constants.dart';


class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.height * 0.25,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  white,
                  white,
                  white.withOpacity(0.01),
                ]
              )
            ),
          ),
          ClipPath(
            clipper: SingleCurvedClipper(),
            child: Container(
              height: size.height * 0.09,
              width: size.width,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    purple,
                    lightPurple,
                    light2Purple,
                    light3Purple,
                    white,
                  ]
                ),
              ),
              child: ClipPath(
                clipper: SingleCurvedClipper(),
                child: Container(
                  height: size.height * 0.09,
                  width: size.width,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: appPadding / 1.5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            lightBlueGrey,
                            lightBlueGrey,
                            white,
                            white,
                          ]
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '2.30',style: TextStyle(
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Text(
                        'Rainforest - Relaxing',style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Text(
                        '-0.50',style: TextStyle(
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
