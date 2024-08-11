import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Tires extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xCC000000),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(18, 35, 16, 25.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 11, 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF4BC1C),
                        ),
                        child: Container(
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF4BC1C),
                        ),
                        child: Container(
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x80FFFFFF),
                        ),
                        child: Container(
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x80FFFFFF),
                        ),
                        child: Container(
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x80FFFFFF),
                        ),
                        child: Container(
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x80FFFFFF),
                      ),
                      child: Container(
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.1, 0, 5.1, 13),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'TIRES',
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    height: 1,
                    color: Color(0xFFF4BC1C),
                  ),
                ),
              ),
            ),

            //left front
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 7, 20.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(3.3, 0, 3.3, 9.5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'LEFT FRONT',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          height: 1.1,
                          color: Color(0xFFFFFFFF),
                          decorationColor: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(7.2, 0, 3.5, 9.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.5, 10, 2),
                          child: SizedBox(
                            width: 97,
                            child: Text(
                              'PRESSURE :',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10.5, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Pressure',
                                      hintStyle: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                                width: 30,
                                height: 30,
                                child: IconButton(
                                  icon: SvgPicture.network(
                                    'assets/vectors/vector_24_x2.svg',
                                  ),
                                  onPressed: () {
                                    // Add your mic button functionality here!
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.2, 0, 3.5, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.5, 10, 2),
                          child: SizedBox(
                            width: 105,
                            child: Text(
                              'CONDITION :',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10.5, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Condition',
                                      hintStyle: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                                width: 30,
                                height: 30,
                                child: IconButton(
                                  icon: SvgPicture.network(
                                    'assets/vectors/vector_7_x2.svg',
                                  ),
                                  onPressed: () {
                                    // Add your mic button functionality here!
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
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
                              // Add your onPressed code here!
                            },
                            child: Text(
                              'ADD IMAGE',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFF000000),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFF4BC1C)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.5),
                        child: SizedBox(
                          width: 35,
                          height: 35,
                          child: IconButton(
                            icon: SvgPicture.network(
                              'assets/vectors/verify_svgrepo_com_5_x2.svg',
                            ),
                            onPressed: () {
                              // Add your verify button functionality here!
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //right front

            Container(
              margin: EdgeInsets.fromLTRB(2.3, 0, 1, 20.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 9.5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'RIGHT FRONT',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          height: 1.1,
                          color: Color(0xFFFFFFFF),
                          decorationColor: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(6.9, 0, 7.5, 9.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.5, 10, 2),
                          child: SizedBox(
                            width: 97,
                            child: Text(
                              'PRESSURE :',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10.5, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Pressure',
                                      hintStyle: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: SvgPicture.network(
                                  'assets/vectors/vector_5_x2.svg',
                                ),
                                iconSize: 30,
                                onPressed: () {
                                  // Add your onPressed code here
                                  print('Mic button pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(2.9, 0, 7.5, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.5, 10, 2),
                          child: SizedBox(
                            width: 105,
                            child: Text(
                              'CONDITION :',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10.5, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Condition',
                                      hintStyle: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: SvgPicture.network(
                                  'assets/vectors/vector_8_x2.svg',
                                ),
                                iconSize: 30,
                                onPressed: () {
                                  // Add your onPressed code here
                                  print('Mic button pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.7, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
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
                                // Add your onPressed code here
                                print('Add Image button pressed');
                              },
                              child: Text(
                                'ADD IMAGE',
                                style: GoogleFonts.getFont(
                                  'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 1.3,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFFF4BC1C)),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: SvgPicture.network(
                            'assets/vectors/verify_svgrepo_com_x2.svg',
                          ),
                          iconSize: 35,
                          onPressed: () {
                            // Add your onPressed code here
                            print('Verify button pressed');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //left rear
            Container(
              margin: EdgeInsets.fromLTRB(4, 0, 3, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(3.4, 0, 3.4, 9.5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'LEFT REAR',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          height: 1.1,
                          color: Color(0xFFFFFFFF),
                          decorationColor: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(7.2, 0, 3.5, 9.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.5, 10, 2),
                          child: SizedBox(
                            width: 97,
                            child: Text(
                              'PRESSURE :',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10.5, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Pressure',
                                      hintStyle: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: SvgPicture.network(
                                  'assets/vectors/vector_9_x2.svg',
                                ),
                                iconSize: 30,
                                onPressed: () {
                                  // Add your onPressed code here
                                  print('Mic button pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.2, 0, 3.5, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.5, 10, 2),
                          child: SizedBox(
                            width: 105,
                            child: Text(
                              'CONDITION :',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10.5, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Condition',
                                      hintStyle: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: SvgPicture.network(
                                  'assets/vectors/vector_2_x2.svg',
                                ),
                                iconSize: 30,
                                onPressed: () {
                                  // Add your onPressed code here
                                  print('Mic button pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
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
                              // Add your onPressed code here
                              print('Add Image button pressed');
                            },
                            child: Text(
                              'ADD IMAGE',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFF000000),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFF4BC1C)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: SvgPicture.network(
                          'assets/vectors/verify_svgrepo_com_2_x2.svg',
                        ),
                        iconSize: 35,
                        onPressed: () {
                          // Add your onPressed code here
                          print('Verify button pressed');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //right rear
            Container(
              margin: EdgeInsets.fromLTRB(4.4, 0, 0, 27.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 9.5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'RIGHT REAR',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                          height: 1.1,
                          color: Color(0xFFFFFFFF),
                          decorationColor: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(9.8, 0, 3.5, 9.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.5, 10, 2),
                          child: SizedBox(
                            width: 97,
                            child: Text(
                              'PRESSURE :',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10.5, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Pressure',
                                      hintStyle: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: SvgPicture.network(
                                  'assets/vectors/vector_18_x2.svg',
                                ),
                                iconSize: 30,
                                onPressed: () {
                                  // Add your onPressed code here
                                  print('Mic button pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5.8, 0, 3.5, 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5.5, 10, 2),
                          child: SizedBox(
                            width: 105,
                            child: Text(
                              'CONDITION :',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2.5, 10.5, 0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Enter Condition',
                                      hintStyle: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Color(0xFFD9D9D9),
                                        ),
                                      ),
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.3,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: SvgPicture.network(
                                  'assets/vectors/vector_16_x2.svg',
                                ),
                                iconSize: 30,
                                onPressed: () {
                                  // Add your onPressed code here
                                  print('Mic button pressed');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
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
                              // Add your onPressed code here
                              print('Add Image button pressed');
                            },
                            child: Text(
                              'ADD IMAGE',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                height: 1.3,
                                color: Color(0xFF000000),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFF4BC1C)),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: SvgPicture.network(
                          'assets/vectors/verify_svgrepo_com_4_x2.svg',
                        ),
                        iconSize: 35,
                        onPressed: () {
                          // Add your onPressed code here
                          print('Verify button pressed');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(4, 0, 6, 0),
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
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10.3, 0, 5.3),
                child: Text(
                  'NEXT',
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
          ],
        ),
      ),
    );
  }
}
