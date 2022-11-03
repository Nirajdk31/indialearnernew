import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'dart:math' as math;

import '../../../constants/constants.dart';
import 'header_background.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        HeaderBackground(),
        Container(
          alignment: Alignment.center,
          height: size.height * 0.6,
          padding:
              EdgeInsets.fromLTRB(appPadding, appPadding * 2, appPadding, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.06,
                width: size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: white.withOpacity(0.7),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                'JavaScript',
                style: TextStyle(
                  color: white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: appPadding * 1.5),
                child: Text(
                  'Learn Java Script from scratch',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: white.withOpacity(0.5),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    height: 1.5,
                  ),
                ),
              ),
              Spacer(),
              Text(
                'by Tony Lane',
                style: TextStyle(
                  color: black.withOpacity(0.5),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.025),
                width: size.width * 0.3,
                height: 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill ),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                      grey.withOpacity(0.05),
                      grey.withOpacity(0.8),
                      grey.withOpacity(0.05),
                    ])),
              )
            ],
          ),
        ),
        Positioned(
          top: size.height * 0.1,
          child: Container(
            width: size.width * 0.6,
            height: size.height * 0.55,
            child: Image(
              image: AssetImage("assets/images/audio.png"),
            ),
          ),
        )
      ],
    );
  }
}
