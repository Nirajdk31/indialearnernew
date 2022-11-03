import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:india_learner_app/billing/paymentmode.dart';

class AddressList extends StatefulWidget {
  static const String tag = '-/addresslist';
  const AddressList({Key? key}) : super(key: key);

  @override
  _AddressListState createState() => _AddressListState();
}

int? selected;
int? mydefault;

class _AddressListState extends State<AddressList> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill)),
          child: SafeArea(
            top: true,
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
                      const Text("Billing Address",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),

                    ],
                  ),
                  Image.asset(
                    'assets/images/addresslist.png',
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
                      Container(
                          padding: const EdgeInsets.all(7),
                          transform: Matrix4.translationValues(0, -25, 0),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.holiday_village_rounded,
                            color: Colors.blueGrey,
                            size: 40,
                          )),
                      Text(
                        'Select billing address',
                        style: TextStyle(
                          color: Colors.purple.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          decorationStyle: TextDecorationStyle.dotted,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.5,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: const DottedLine(
                            dashColor: Colors.grey,
                          )),
                      const SizedBox(height: 10),
                      ListView.builder(
                          itemCount: 7,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: size.width * 0.8,
                                              child: const Text(
                                                'Akshay Rathi',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    top: 5),
                                                child: const Text(
                                                    '1155/A N.I.T. Colony \nNear Hasanbaugh Police Chowki,\nNew Nandanvan\nNagpur, Maharashtra,\nIndia - 440009',
                                                    softWrap: true,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ))),
                                            Container(
                                                width: size.width * 0.8,
                                                margin: const EdgeInsets.only(
                                                    top: 5, bottom: 10),
                                                child: const Text.rich(
                                                    TextSpan(children: [
                                                  TextSpan(
                                                    text: "Phone:",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  TextSpan(
                                                    text: " +917020361193",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                    ),
                                                  )
                                                ]))),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  selected != index
                                      ? Container()
                                      : Column(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pushNamed(PaymentMode.tag);
                                              },
                                              child: Text('Use this address',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16)),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.purple,
                                                  elevation: 0,
                                                  fixedSize: Size(
                                                      size.width * 0.8, 45)),
                                            ),
                                            const SizedBox(height:3),
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Edit address',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.black),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.grey.shade300,
                                                  fixedSize: Size(
                                                      size.width * 0.8, 45),
                                                  elevation: 0),
                                            ),
                                            SizedBox(height:3),
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  mydefault = index;
                                                });
                                              },
                                              child: mydefault == index
                                                  ? Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: const [
                                                        Icon(
                                                          Icons.check_circle,
                                                          color: Colors.black,
                                                        ),
                                                        SizedBox(width: 8),
                                                        Text(
                                                          'Default',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ],
                                                    )
                                                  : Text(
                                                      'Mark default',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16,
                                                          color: Colors.black),
                                                    ),
                                              style: ElevatedButton.styleFrom(
                                                  primary: mydefault == index
                                                      ? Colors.yellow.shade600
                                                      : Colors.grey.shade300,
                                                  fixedSize: Size(
                                                      size.width * 0.8, 45),
                                                  elevation: 0),
                                            )
                                          ],
                                        ),
                                  SizedBox(height: 10),
                                  index < 19?Divider(
                                    color: Colors.grey,
                                  ):Container(),
                                ],
                              ),
                            );
                          }),
                      const SizedBox(height: 10),
                      const Divider(),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/myAddressScreen.tag');
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                padding: const EdgeInsets.only(
                                    top: 2, bottom: 2, left: 15, right: 15),
                                alignment: Alignment.center,
                                primary: Colors.transparent,
                                elevation: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 1.0,
                                          right: 3.0,
                                          top: 10,
                                          bottom: 10),
                                      child: ImageIcon(
                                        AssetImage('assets/images/newhome.png'),
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Add new address',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                              ],
                            )),
                      ),
                      const SizedBox(height: 20,)
                    ],

                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
