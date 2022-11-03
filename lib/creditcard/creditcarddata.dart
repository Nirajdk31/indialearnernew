import 'package:flutter/material.dart';

class Credit{
  final String cardHolder;
  final String cardNumber;
  final String cardExpiry;
  final  Color color;
  final  String cardImage;

  Credit({
    required this.cardHolder,
    required this.cardNumber,
    required this.cardExpiry,
    required this.color,
    required this.cardImage,
  });
}

List<Credit> dummyCard= [
  Credit(
      cardHolder: "Rajat Kokade",
      cardNumber: "7625 8372 6272 XXXX",
      cardExpiry: "27/9",
      color: Color(0xff1C2833),
      cardImage: "assets/images/visa.png",
  ),
  Credit(
    cardHolder: "Niraj Khanorkar",
    cardNumber: "8538 6548 9056 XXXX",
    cardExpiry: "27/9",
    color: Color(0xff512E5F),
    cardImage: "assets/images/rupay.png",
  ),
  Credit(
    cardHolder: "Shivraj Bhosle",
    cardNumber: "3564 9784 3548 XXXX",
    cardExpiry: "27/9",
    color: Color(0xff154360),
    cardImage: "assets/images/american.png",
  ),
  Credit(
    cardHolder: "Aman Singh",
    cardNumber: "3850 6738 1740 XXXX",
    cardExpiry: "27/9",
    color: Color(0xff0B5345),
    cardImage: "assets/images/mastercard.png",
  ),
];