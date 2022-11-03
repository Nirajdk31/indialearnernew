import 'dart:math';

import 'package:flutter/material.dart';
import 'package:india_learner_app/mypurchase/purchase_list.dart';

class MyPurchase extends StatelessWidget {
  final bool status;
  static const String tag ='/myPurchaseScreen.tag';
  const MyPurchase({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill, opacity: 0.6,
              ),),
            child: Column(
                children:[
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 8,left: 8),
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back_rounded,)),
                      ),
                      const Text("My Purchases",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                    ],
                  ),
                  Image.asset('assets/images/previouspurchase.png'),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: dummyCart.length,
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.3,
                      crossAxisCount: 2,
                      // crossAxisSpacing: 1,
                      // mainAxisSpacing: 6,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      var tilecolor = Colors.primaries[
                      Random().nextInt(Colors.primaries.length)];
                      return  Padding(
                        padding: const EdgeInsets.all(4),
                        child: Card(
                          color: tilecolor.shade100.withOpacity(0.65),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Transaction Id:- ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                      Text("Transaction Date:- ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                      Text("Method:- ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                      Text("Amount:- ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                      Text("Status:- ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                       const Text("0245",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black87,),),
                                       const Text("26/10/2021",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87,),),
                                       Text(
                                         index % 3 == 0
                                          ? 'Credit Card'
                                          : index % 4 == 0
                                          ? 'Debit Card'
                                          : index % 2 == 0
                                          ? 'Net Banking'
                                          : 'UPI',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87,),),
                                       const Text("₹100",
                                         style: TextStyle(
                                         fontSize: 12,
                                         fontWeight: FontWeight.w700,
                                         color: Colors.black87,),),
                                       Text(
                                        index % 3 == 0 ? 'Failed' : 'Success',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: index % 3 == 0
                                                ? Colors.red.shade600
                                                : Colors.green.shade600),
                                      ),
                                    ],  //just for testing, will fill with image later
                                  ),
                                ],
                              ),
                              Spacer(),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/showDetailsScreen.tag');
                                },
                                child: const Text(
                                  'Show details',
                                  style: TextStyle(color: Colors.white),
                                ),
                                materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                                minWidth: double.infinity,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                color: tilecolor.shade300,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
