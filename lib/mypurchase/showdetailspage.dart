import 'package:flutter/material.dart';

class ShowDetails extends StatelessWidget {
  static const String tag ='/showDetailsScreen.tag';
  const ShowDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/background.png"),
              opacity: 0.6,
            ),),
          child: Column(
            children: [
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
                  const Text("Order Details",
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black26),borderRadius: const BorderRadius.all(Radius.circular(10)), color: Colors.white.withOpacity(0.7)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(child: Text("Order Successful", style: TextStyle(color: Colors.black45, fontSize: 23),)),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text("Transaction Id:- ",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                  ),
                                  Text("0245",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,),),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text("Txn Date:- ",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                  ),
                                  Text("26/10/2021",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,),),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text("Method:- ",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                  ),
                                  Text(
                                    "UPI",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,),),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text("Amount:- ",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                  ),
                                  Text("₹100",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,),),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text("Status:- ",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                  ),
                                  Text('Success',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text("Billing Address:- ",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                  ),
                                  Text('1155/A N.I.T. Colony \nNear Hasanbaugh Police Chowki,\nNew Nandanvan\nNagpur, Maharashtra,\nIndia - 440009',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    width: 100,
                                    child: Text("Product Details:- ",
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black87,),),
                                  ),
                                  Text('MERN Full-Stack Development \nVideo Course',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87),
                                  ),
                                ],
                              ),
                            ],  //just for testing, will fill with image later
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
