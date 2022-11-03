import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../billing/paymentmode.dart';

class MyWalletScreen extends StatelessWidget {
  static const String tag ='/myWalletScreen.tag';
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill,
              opacity: 0.6,
          ),),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Text("My Wallet",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ],
                ),
                Image.asset('assets/images/walletimage.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("My Wallet",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,  color: Colors.black87),),
                          const Text("Available wallet balance ₹2000",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,  color: Colors.black54),),
                          const SizedBox(height: 25,),
                          const Text("Add Money",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,  color: Colors.black87),),
                          const SizedBox(height: 10,),
                          TextFormField(
                            decoration: const InputDecoration(label: Text("₹ Amount"),
                                border: OutlineInputBorder()),
                          ),
                          const Center(
                            child: Text("Money will be added to your account",
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300,  color: Colors.black54),),
                          ),
                          const SizedBox(height: 10,),
                          Center(
                            child: ElevatedButton(
                                style:  ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                  fixedSize: Size(200, 45),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                ),
                                onPressed: (){
                                  Navigator.pushNamed(context, PaymentMode.tag);
                                },
                                child: Text("Proceed", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 19),)),
                          ),
                          const SizedBox(height: 15,),
                          const Text("My Previous Transaction",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,  color: Colors.black87),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      width: double.infinity,
                      height: 370,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(width: 1, color: Colors.black26),
                          color: Colors.white.withOpacity(0.7)),
                      child: Column(
                        children: const [
                          ListTile(
                            title: Text("MERN Full Stack", style: TextStyle(fontSize: 16,),),
                            subtitle: Text("Video Course", style: TextStyle(),),
                            trailing: Text("-₹999", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),),
                          ),
                          ListTile(
                            title: Text("JavaScript Full Course", style: TextStyle(fontSize: 16,),),
                            subtitle: Text("Audio Course", style: TextStyle(),),
                            trailing: Text("-₹999", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),),
                          ),
                          ListTile(
                            title: Text("Reward Cash", style: TextStyle(fontSize: 16,),),
                            subtitle: Text("Refer and Earn", style: TextStyle(),),
                            trailing: Text("+₹300", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),),
                          ),
                          ListTile(
                            title: Text("Flutter Master", style: TextStyle(fontSize: 16,),),
                            subtitle: Text("Video Course", style: TextStyle(),),
                            trailing: Text("-₹999", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),),
                          ),
                          ListTile(
                            title: Text("Sign up Reward", style: TextStyle(fontSize: 16,),),
                            subtitle: Text("Initial reward", style: TextStyle(),),
                            trailing: Text("+₹3000", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
