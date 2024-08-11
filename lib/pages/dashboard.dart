import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header.dart';
import 'history.dart';

class _Db extends StatefulWidget {
  Dash_Board createState() => Dash_Board();
}

class Dash_Board extends State<_Db> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xCC000000),
      body: Padding(
        padding: EdgeInsets.all(16.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with title and user icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DASHBOARD',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xFFF4BC1C),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF4BC1C),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    icon: SvgPicture.asset('assets/vectors/user_x2.svg'),
                    iconSize: 30,
                    onPressed: () {
                      // Action for user icon
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Expanded container for buttons
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // New Inspection button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF4BC1C), // Background color
                      foregroundColor: Color(0xFF000000), // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shadowColor: Color(0x4D000000),
                      elevation: 4,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Header()),
                      );
                    },
                    child: Text(
                      'NEW INSPECTION',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Inspection History button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF4BC1C), // Background color
                      foregroundColor: Color(0xFF000000), // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shadowColor: Color(0x4D000000),
                      elevation: 4,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => History()),
                      );
                    },
                    child: Text(
                      'INSPECTION HISTORY',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Db();
  }
}
