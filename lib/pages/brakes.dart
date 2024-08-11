import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'engine.dart'; // Import the Engine page

class Brakes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xCC000000),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(18.1, 54, 16, 43.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top segmented line
              Container(
                margin: EdgeInsets.fromLTRB(6.9, 0, 9, 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(6, (index) {
                    return Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 4),
                        height: 4,
                        color:
                            index < 4 ? Color(0xFFF4BC1C) : Color(0xFF7F7F7F),
                      ),
                    );
                  }),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(3.3, 0, 3.3, 19.5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'BRAKES',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xFFF4BC1C),
                    ),
                  ),
                ),
              ),
              _buildRow(
                context,
                title: 'FLUID LEVEL :',
              ),
              Container(
                margin: EdgeInsets.only(bottom: 14.5),
                child: Text(
                  'BRAKE CONDITION :',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              _buildRow(
                context,
                title: 'FRONT :',
              ),
              _buildRow(
                context,
                title: 'REAR :',
              ),
              _buildRow(
                context,
                title: 'EMERGENCY BREAK :',
              ),
              Spacer(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF4BC1C),
                    padding: EdgeInsets.symmetric(vertical: 10.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Engine()), // Navigate to Engine page
                    );
                  },
                  child: Text(
                    'NEXT',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFF000000),
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

  Widget _buildRow(BuildContext context, {required String title}) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 5.5, right: 10, bottom: 2),
            child: Text(
              title,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.5),
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SizedBox(
                  width: 80,
                  height: 30,
                  child: TextField(
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/vectors/vector_13_x2.svg', // replace with the correct icon path
                  width: 30, // Increased size for better alignment
                  height: 30, // Increased size for better alignment
                ),
                onPressed: () {
                  // Add your functionality here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
