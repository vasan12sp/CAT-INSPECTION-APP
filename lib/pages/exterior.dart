import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'brakes.dart'; // Import the Brakes page

class _Exterior extends StatefulWidget {
  @override
  exterior createState() => exterior();
}

class exterior extends State<_Exterior> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xCC000000),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'EXTERIOR',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xFFF4BC1C),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'DAMAGE (RUST OR DENT):',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF333333),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: 'YES',
                      hintStyle: GoogleFonts.montserrat(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    style: GoogleFonts.montserrat(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    // Add your mic button functionality here
                  },
                  icon: SvgPicture.asset(
                    'assets/vectors/vector_4_x2.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'NOTES HERE...',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0x4DFFFFFF),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          // Add your mic button functionality here
                        },
                        icon: SvgPicture.asset(
                          'assets/vectors/vector_20_x2.svg',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF4BC1C),
                    foregroundColor: Color(0xFF000000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    elevation: 2,
                  ),
                  child: Text(
                    'ADD IMAGE',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Add your mic button functionality here
                  },
                  icon: SvgPicture.asset(
                    'assets/vectors/verify_svgrepo_com_3_x2.svg',
                    width: 35,
                    height: 35,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LEAK SUSPENSION:',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF333333),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintText: 'YES',
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        // Add your mic button functionality here
                      },
                      icon: SvgPicture.asset(
                        'assets/vectors/vector_26_x2.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Brakes()), // Navigate to Brakes page
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF4BC1C),
                  foregroundColor: Color(0xFF000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  elevation: 2,
                ),
                child: Text(
                  'NEXT',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
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

class Exterior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Exterior();
  }
}
