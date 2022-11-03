import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories_il.dart';

class CategoriesILPage extends StatelessWidget {
  final bool status;
  static const String tag ='/categoriesILScreen.tag';
  const CategoriesILPage({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill
          ),),
          child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(height: 9,),
                  status ? Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8,left: 8),
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
                      const Text("Select Category",
                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                    ],
                  ) : Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 50),
                    constraints: BoxConstraints(minHeight: 40),
                    child: const Text("Select Category",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w800),),
                  ),
                  SizedBox(height: 10,),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(bottom: 20),
                    itemCount: dummyCategoriesIL.length,
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3/2.8,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final data = dummyCategoriesIL[index];
                      return  Card(
                        margin: EdgeInsets.only(left: 8,right: 8,top: 6,bottom: 6),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                        elevation: 5,
                        child: Column(
                          children: [
                            Icon(Icons.category_outlined, size: 100, color: Colors.blue,),
                            SizedBox(height: 20,),
                            Text(data.name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,),),
                          ],  //just for testing, will fill with image later
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
