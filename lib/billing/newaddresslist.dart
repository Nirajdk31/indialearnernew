import 'package:flutter/material.dart';

class MyAddress extends StatelessWidget {
  static const String tag ='/myAddressScreen.tag';
  const MyAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill,
              opacity: 0.5,
           ),
          ),
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
                  const Text("Add/Update Address",
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                ],
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 5,
                  crossAxisCount: 1,),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(label: Text("Full Name"),
                          border: OutlineInputBorder()),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(label: Text("E-mail"),
                          border: OutlineInputBorder()),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(label: Text("Mobile"),
                          border: OutlineInputBorder()),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(label: Text("Address"),
                          border: OutlineInputBorder()),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(label: Text("Select State"),
                          border: OutlineInputBorder()),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(label: Text("City"),
                          border: OutlineInputBorder()),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(label: Text("Pincode"),
                          border: OutlineInputBorder()),),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(7)),color: Colors.purple.shade400,),
                        padding: const EdgeInsets.only(left: 135, top: 5),
                        height: 40,
                        width: double.infinity,
                        child: const Text("Next Step", style: TextStyle(color: Colors.white, fontSize: 20),),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
