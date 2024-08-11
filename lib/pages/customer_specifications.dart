import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class _CustomerSpecifications extends StatefulWidget {
  Customer_Specifications createState() => Customer_Specifications();
}

class Customer_Specifications extends State<_CustomerSpecifications> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xCC000000),
        ),
        padding: EdgeInsets.fromLTRB(18, 25, 19, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // TODO: Implement back button action here
                      print("back button pressed");
                    },
                    child: SvgPicture.asset(
                      'assets/vectors/layer_15_x2.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'CUSTOMER SPECIFICATIONS',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xFFF4BC1C),
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Placeholder to balance the row
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0.4, bottom: 36),
              child: Text(
                'DESCRIPTION',
                style: GoogleFonts.getFont(
                  'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  color: Color(0xFFFFFFFF),
                  decorationColor: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 11, vertical: 16),
              child: TextField(
                maxLines: 6, // Make the description box larger
                decoration: InputDecoration(
                  hintText: 'NOTES HERE...',
                  hintStyle: GoogleFonts.getFont(
                    'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0x4DFFFFFF),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0.2, bottom: 13),
              child: Text(
                'IMAGE',
                style: GoogleFonts.getFont(
                  'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                  color: Color(0xFFFFFFFF),
                  decorationColor: Color(0xFFFFFFFF),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 350.8,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFFFFF)),
                borderRadius: BorderRadius.circular(3),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/whats_app_image_20240810_at_91043_am_1.jpeg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomerSpecifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _CustomerSpecifications();
  }
}
