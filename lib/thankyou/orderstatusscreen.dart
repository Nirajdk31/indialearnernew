import 'dart:math';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../billing/billingaddresslist.dart';
import 'orderprovider.dart';

class PaymentStatusPage extends StatelessWidget {
  static const String tag = '-/paymentstatus';

  const PaymentStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mysize = MediaQuery.of(context).size;
    final listcart = Provider.of<OrderProvider>(context);

    String myCount(String amount) {
      int count = amount.length;
      if (count > 3 && count < 5) {
        return '₹${amount.substring(0, 1)},${amount.substring(1, count)}';
      } else {
        return '₹$amount';
      }
    }

    return Scaffold(
      body: SafeArea(
        top: true,
        child: Container(
          height: mysize.height,
          width: mysize.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 5.0),
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
                    const Text("My Cart",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/paymentsuccess.png'),
                const SizedBox(height: 10),
                Container(
                  constraints: BoxConstraints(
                      minWidth: mysize.width * 0.90,
                      maxWidth: mysize.width * 0.90,
                      minHeight: 400),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                          transform: Matrix4.translationValues(0, -25, 0),
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.75),
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.check_circle_rounded,
                            size: 60,
                            color: Colors.lightGreen.shade600,
                          )),
                      Text(
                        'Order overview',
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
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: listcart.items.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.only(left: 15, right: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/OTP.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listcart.items[index].name,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 3.5,
                                              ),
                                              Text(listcart
                                                  .items[index].subtitle),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      Icons.delete_outline,
                                                      color: Colors.black54,
                                                    ),
                                                    SizedBox(
                                                      width: 1.5,
                                                    ),
                                                    Text(
                                                      'Remove',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black54),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text.rich(TextSpan(children: [
                                        TextSpan(
                                            text:
                                                '₹${listcart.items[index].price}',
                                            style: TextStyle(
                                                decoration: num.parse(listcart
                                                            .items[index]
                                                            .orderprice) >
                                                        0
                                                    ? TextDecoration.lineThrough
                                                    : TextDecoration.none,
                                                color: num.parse(listcart
                                                            .items[index]
                                                            .orderprice) >
                                                        0
                                                    ? Colors.red
                                                    : Colors.black,
                                                fontWeight:
                                                    num.parse(listcart.items[index].orderprice) >
                                                            0
                                                        ? FontWeight.normal
                                                        : FontWeight.bold,
                                                fontSize:
                                                    num.parse(listcart.items[index].orderprice) >
                                                            0
                                                        ? 12
                                                        : 18)),
                                        TextSpan(
                                            text: num.parse(listcart
                                                        .items[index]
                                                        .orderprice) >
                                                    0
                                                ? ' ₹${listcart.items[index].orderprice}'
                                                : '',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18))
                                      ])),
                                    ],
                                  ),
                                  index + 1 < listcart.items.length
                                      ? const Divider()
                                      : Container(
                                          margin: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: const DottedLine(
                                            dashColor: Colors.grey,
                                          )),
                                ],
                              ),
                            );
                          }),
                      const SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '₹6198.00',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 4,),
                      const SizedBox(height: 4,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Tax(18%)',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '₹1,115.64',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 8,),
                      const Divider(),
                      const SizedBox(height: 4,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  'Discount',
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: 3,),
                                Text(
                                  'NEW10 applied',
                                  style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w700,color: Colors.red,),
                                ),
                              ],
                            ),
                            const Text(
                              '-₹619.8',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '₹6693.84',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,right:8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(AddressList.tag);
                            },
                            child: const Text('Pay Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                              padding: const EdgeInsets.all(12),
                              fixedSize: Size(mysize.width,45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Previous purchases',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/myPurchaseScreen.tag');
                          },
                          child: Text(
                            'Show more',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade500),
                          ),
                        ),
                        const SizedBox(
                          width: 1.5,
                        ),
                        Icon(Icons.arrow_forward_rounded,
                            size: 20, color: Colors.blue.shade500)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                    height: mysize.height * 0.27,
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 50,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 3 / 2.5),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, i) {
                          var tilecolor = Colors.primaries[
                              Random().nextInt(Colors.primaries.length)];
                          return Container(
                              height: mysize.height * 0.05,
                              width: mysize.width * 1,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: tilecolor.shade100.withOpacity(0.65),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 15),
                                    child: Image.asset(
                                      'assets/images/getmoney.png',
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              'Txn Dt:',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '26-Jun-2021',
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Method:',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              i % 3 == 0
                                                  ? 'Credit Card'
                                                  : i % 4 == 0
                                                      ? 'Debit Card'
                                                      : i % 2 == 0
                                                          ? 'Net Banking'
                                                          : 'UPI',
                                              style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, top: 5, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Amount:',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                myCount('${100 * (1 + i)}'),
                                                style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Status:',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              i % 3 == 0 ? 'Failed' : 'Success',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: i % 3 == 0
                                                      ? Colors.red.shade600
                                                      : Colors.green.shade600),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Show details',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    minWidth: double.infinity,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    color: tilecolor.shade300,
                                  ),
                                ],
                              ));
                        })),
                SizedBox(height: 20,)
              ]

              ),
            ),
          ),
        ),
      ),
    );
  }
}
