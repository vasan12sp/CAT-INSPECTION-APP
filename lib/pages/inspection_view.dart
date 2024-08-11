import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'summary_view.dart'; // Import the SummaryView page

class _InspectionView extends StatefulWidget {
  @override
  Inspection_View createState() => Inspection_View();
}

class Inspection_View extends State<_InspectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xCC000000),
      body: Padding(
        padding: EdgeInsets.fromLTRB(19, 24, 14, 43.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'INSPECTION VIEW',
                style: GoogleFonts.getFont(
                  'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  height: 0.8,
                  color: Color(0xFFF4BC1C),
                ),
              ),
              SizedBox(height: 14),
              Text(
                'ID : ABC001',
                style: GoogleFonts.getFont(
                  'Montserrat',
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  height: 1.3,
                  color: Color(0xCCFFFFFF),
                ),
              ),
              SizedBox(height: 14),
              buildSummaryCard(
                title: 'OVERALL SUMMARY',
                iconPath: 'assets/vectors/layer_1_x2.svg',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SummaryView()), // Navigate to SummaryView page
                  );
                },
              ),
              SizedBox(height: 14),
              buildSummaryCard(
                title: 'TIRE SUMMARY',
                iconPath: 'assets/vectors/layer_11_x2.svg',
                onPressed: () {
                  print('Tire Summary tapped');
                },
              ),
              SizedBox(height: 14),
              buildSummaryCard(
                title: 'BATTERY SUMMARY',
                iconPath: 'assets/vectors/layer_16_x2.svg',
                onPressed: () {
                  print('Battery Summary tapped');
                },
              ),
              SizedBox(height: 14),
              buildSummaryCard(
                title: 'EXTERIOR SUMMARY',
                iconPath: 'assets/vectors/layer_12_x2.svg',
                onPressed: () {
                  print('Exterior Summary tapped');
                },
              ),
              SizedBox(height: 14),
              buildSummaryCard(
                title: 'BRAKE SUMMARY',
                iconPath: 'assets/vectors/layer_17_x2.svg',
                onPressed: () {
                  print('Brake Summary tapped');
                },
              ),
              SizedBox(height: 20),
              buildSummaryCard(
                title: 'ENGINE SUMMARY',
                iconPath: 'assets/vectors/layer_13_x2.svg',
                onPressed: () {
                  print('Engine Summary tapped');
                },
              ),
              SizedBox(height: 20),
              // Export PDF Button
              Container(
                margin: EdgeInsets.fromLTRB(18, 0, 2, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xFFF4BC1C),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x4D000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    print('Export PDF tapped');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF4BC1C),
                    foregroundColor: Colors.black,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text(
                      'EXPORT PDF',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1.3,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSummaryCard({
    required String title,
    required String iconPath,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.fromLTRB(8.1, 14, 15, 15),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFFFFFFF)),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 170,
              child: Text(
                title,
                style: GoogleFonts.getFont(
                  'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 1.3,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            SvgPicture.asset(
              iconPath,
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class InspectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _InspectionView();
  }
}
