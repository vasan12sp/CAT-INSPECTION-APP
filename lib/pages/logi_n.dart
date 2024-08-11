import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/pages/dashboard.dart' as dBoard;
import 'dashboard.dart';
import 'package:http/http.dart' as http;
import 'dart:ui';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class _LogiN extends StatefulWidget {
  Login createState() => Login();
}

class Login extends State<_LogiN> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xCC000000),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(21, screenSize.height * 0.2, 21, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/cat_profile_1.png',
                        ),
                      ),
                    ),
                    width: screenSize.width * 0.85,
                    height: screenSize.width * 0.85, // Make it square
                  ),
                ),
                SizedBox(height: 40), // Add space between the image and fields
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Username TextField
                      Container(
                        width: screenSize.width * 0.8,
                        margin: EdgeInsets.only(bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                'assets/vectors/user_1_x2.svg',
                                width: 20,
                                height: 20,
                              ),
                            ),
                            hintText: 'USERNAME',
                            hintStyle: GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xFFFFFFFF),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFF4BC1C)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFF4BC1C)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // Password TextField
                      Container(
                        width: screenSize.width * 0.8,
                        margin: EdgeInsets.only(bottom: 43),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                'assets/vectors/lock_x2.svg',
                                width: 20,
                                height: 20,
                              ),
                            ),
                            hintText: 'PASSWORD',
                            hintStyle: GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xFFFFFFFF),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFF4BC1C)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFF4BC1C)),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // Login Button
                      Container(
                        width: screenSize.width * 0.8,
                        margin: EdgeInsets.only(bottom: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF4BC1C),
                            padding: EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            shadowColor: Color(0x4D000000),
                            elevation: 2,
                          ),
                          onPressed: () {
                            // Handle login logic here
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dashboard()),
                            );
                          },
                          child: Text(
                            'LOGIN',
                            style: GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      // Forgot Password Text
                      Text(
                        'FORGOT PASSWORD?',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LogiN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LogiN();
  }
}
