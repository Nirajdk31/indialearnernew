import 'package:flutter/material.dart';

import '../creditcard/creditcardpage.dart';

class PaymentMode extends StatefulWidget {
  static const String tag = '-/paymentselection';

  const PaymentMode({Key? key}) : super(key: key);

  @override
  _PaymentModeState createState() => _PaymentModeState();
}

class Paymentoption {
  final String name;
  final String image;

  Paymentoption({required this.name, required this.image});
}

int selected =0;

List<Paymentoption> myoption = [
  Paymentoption(name: 'Credit / Debit Cards', image: 'assets/images/creditcard.png'),
  Paymentoption(name: 'Net Banking', image: 'assets/images/netbanking.png'),
  Paymentoption(name: 'UPI', image: 'assets/images/upi.png'),
  Paymentoption(name: 'Paytm', image: 'assets/images/paytm.png'),
  Paymentoption(name: 'PhonePe', image: 'assets/images/phonepe.png'),
];

class _PaymentModeState extends State<PaymentMode> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration:const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_back_rounded)),
                      const Text("Payment mode",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                    ],
                  ),
                  Image.asset(
                    'assets/images/paymentgateway.png',
                    height: size.height * 0.4,
                    fit: BoxFit.fill,
                    alignment: Alignment.centerRight,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    constraints: BoxConstraints(
                        minHeight: size.height * 0.5,
                        minWidth: size.width,
                        maxWidth: size.width),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                            itemCount: myoption.length,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selected = index;
                                  });
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  margin: EdgeInsets.only(
                                      top: 10, left: 8, right: 8),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0,
                                        right: 8.0,
                                        top: 4.0,
                                        bottom: 4.0),
                                    child: Row(
                                      children: [
                                        selected == index
                                            ? Container(
                                                padding: EdgeInsets.all(1),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.purple,
                                                      width: 2),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons.circle,
                                                  size: 14,
                                                  color: Colors.purple,
                                                ),
                                              )
                                            : Icon(Icons.circle_outlined),
                                        SizedBox(width: 10),
                                        Image.asset(
                                          myoption[index].image,
                                          height: 50,
                                          width: 50,
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          myoption[index].name,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16),
                                        ),
                                        Spacer(),
                                        selected == index
                                            ? Icon(
                                                Icons.check,
                                                color: Colors.purple,
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(CreditCard.tag);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Proceed',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.arrow_forward_rounded)
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  fixedSize: Size(size.width, 45))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
