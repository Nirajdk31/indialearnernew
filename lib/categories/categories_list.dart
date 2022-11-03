import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'categories.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCategories.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final category = dummyCategories[index];
        return Padding(
            padding: const EdgeInsets.only(right: 8),
          child: Chip(
            backgroundColor: Colors.blue.shade100,
            padding: const EdgeInsets.all(12),
            label: Text(category.name, style: GoogleFonts.roboto(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
           ),
          ),
        );
      },
    );
  }
}
