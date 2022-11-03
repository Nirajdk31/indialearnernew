import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'creditcarddata.dart';

class CreditCard extends StatelessWidget {
  static const String tag ='/allCardsScreen.tag';
  const CreditCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill
          ),),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8, left: 8),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                          )),
                    ),
                    const Text("My Cards",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ],
                ),
                const SizedBox(height: 20,),
                GridView.builder(
                      itemCount: dummyCard.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.8,
                        crossAxisCount: 1,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final dataCard = dummyCard[index];
                        return FlipCard(
                          direction: FlipDirection.VERTICAL,
                          front: Card(
                            color: dataCard.color,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            margin: const EdgeInsets.only(right: 12, left: 12, top: 8, bottom: 8),
                            child: Container(
                              height: 60,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/cardbackground.png"), fit: BoxFit.cover, opacity: 0.5),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12, right: 12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ImageIcon(AssetImage("assets/images/wifiicon.png",),color: Colors.white,),
                                        Image.asset(dataCard.cardImage,height: 50,width: 50,),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 45,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(dataCard.cardNumber, style: GoogleFonts.courierPrime(color: Colors.white,fontSize: 21),),
                                  ),
                                  SizedBox(height: 13,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12, right: 12,),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Card Holder", style: TextStyle(color: Colors.white, fontSize: 13),),
                                            Text(dataCard.cardHolder, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Expiry date",style: TextStyle(color: Colors.white, fontSize: 13),),
                                            Text(dataCard.cardExpiry, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Center(child: Text("[Tap to Edit]", style: TextStyle(color: Colors.white, fontSize: 10),)),
                                ],
                              ),
                            ),
                          ),
                          back: Card(
                            color: dataCard.color,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                            margin: EdgeInsets.only(right: 12, left: 12, top: 8, bottom: 8),
                            child: Container(
                              height: 60,
                              width: 80,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images/cardbackground.png"), fit: BoxFit.cover, opacity: 0.3),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(height: 7,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12, right: 12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ImageIcon(AssetImage("assets/images/wifiicon.png",),color: Colors.white,),
                                        Image.asset(dataCard.cardImage,height: 50,width: 50,),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: TextFormField(
                                      decoration: const InputDecoration(label: Text("Card Number", style: TextStyle(color: Colors.white, fontSize: 12),),
                                        constraints: BoxConstraints(maxHeight: 35, maxWidth: 344),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(width: 0.5, color: Colors.white),
                                        ),
                                        isCollapsed: true,
                                        isDense: true,
                                        contentPadding: EdgeInsets.all(5),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(width: 0.5, color: Colors.white),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(width: 0.5, color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: TextFormField(
                                              decoration: const InputDecoration(label: Text("Card Holder's Name", style: TextStyle(color: Colors.white, fontSize: 12),),
                                                constraints: BoxConstraints(maxHeight: 35, maxWidth: 130),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                ),
                                                isCollapsed: true,
                                                isDense: true,
                                                contentPadding: EdgeInsets.all(5),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 6,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: TextFormField(
                                              obscureText: true,
                                              decoration: const InputDecoration(label: Text("CVV", style: TextStyle(color: Colors.white, fontSize: 12),),
                                                  constraints: BoxConstraints(maxHeight: 35, maxWidth: 130),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                  ),
                                                isCollapsed: true,
                                                isDense: true,
                                                contentPadding: EdgeInsets.all(5),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: TextFormField(
                                              decoration: const InputDecoration(label: Text("Expiry Date", style: TextStyle(color: Colors.white, fontSize: 12),),
                                                constraints: BoxConstraints(maxHeight: 35, maxWidth: 130),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                ),
                                                isCollapsed: true,
                                                isDense: true,
                                                contentPadding: EdgeInsets.all(5),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 8.0),
                                            child: ElevatedButton(onPressed: (){},child: Text("Update"),style: ElevatedButton.styleFrom(primary: Colors.blueGrey),),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
