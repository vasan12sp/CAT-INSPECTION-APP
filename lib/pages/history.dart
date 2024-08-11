import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inspection_view.dart'; // Import the InspectionView page

class _History extends StatefulWidget {
  @override
  history createState() => history();
}

class history extends State<_History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xCC000000),
      body: Padding(
        padding: EdgeInsets.fromLTRB(17, 30, 17, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'INSPECTION HISTORY',
              style: GoogleFonts.getFont(
                'Montserrat',
                fontWeight: FontWeight.w700,
                fontSize: 24,
                height: 0.8,
                color: Color(0xFFF4BC1C),
              ),
            ),
            SizedBox(height: 27),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFFFFF)),
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFFFFFF),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(14, 7, 14, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/vectors/group_x2.svg',
                      width: 30,
                      height: 30,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Handle search action
                      },
                      child: Text('SEARCH'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF4BC1C), // Background color
                        foregroundColor: Colors.black, // Text color
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 27),
            GestureDetector(
              onTap: () {
                // Handle the tap action
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          InspectionView()), // Navigate to InspectionView page
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFFFFFF)),
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF4BC1C),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(14.3, 18, 22, 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INSPECTION -1',
                            style: GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              height: 1.3,
                              color: Color(0xFF000000),
                            ),
                          ),
                          SizedBox(height: 9),
                          Text(
                            'INSPECTION ID : ABC001',
                            style: GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              height: 1.3,
                              color: Color(0x80000000),
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/vectors/layer_14_x2.svg',
                        width: 40,
                        height: 40,
                      ),
                    ],
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

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _History();
  }
}
