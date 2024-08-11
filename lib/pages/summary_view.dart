import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class _SummaryView extends StatefulWidget {
  Summary_View createState() => Summary_View();
}

class Summary_View extends State<_SummaryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xCC000000),
      body: Padding(
        padding: EdgeInsets.fromLTRB(13, 32, 34.1, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(2.4, 0, 2.4, 17),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'OVERALL SUMMARY',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      height: 0.8,
                      color: Color(0xFFF4BC1C),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(2.3, 0, 2.3, 13),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'ID : ABC001',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      height: 1.3,
                      color: Color(0xCCFFFFFF),
                    ),
                  ),
                ),
              ),
              Text(
                'A CAR INSPECTION IS A ROUTINE CHECK TO ENSURE THAT A VEHICLE IS SAFE AND ROADWORTHY. IT INVOLVES EXAMINING VARIOUS COMPONENTS SUCH AS THE BRAKES, TIRES, LIGHTS, ENGINE, AND EMISSIONS SYSTEM. THE GOAL IS TO IDENTIFY ANY ISSUES THAT COULD AFFECT THE CARS PERFORMANCE OR SAFETY. IF PROBLEMS ARE FOUND, THEY MAY NEED TO BE REPAIRED BEFORE THE VEHICLE CAN PASS THE INSPECTION AND BE LEGALLY DRIVEN.',
                style: GoogleFonts.getFont(
                  'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 1.3,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SummaryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SummaryView();
  }
}
