import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'final_save.dart'; // Import the FinalSave page

class _Engine extends StatefulWidget {
  @override
  engine createState() => engine();
}

class engine extends State<_Engine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      body: Column(
        children: [
          // Status Line
          Padding(
            padding: const EdgeInsets.only(top: 16.0), // Adjust top padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    height: 5,
                    color: index == 5
                        ? Colors.yellow[700]
                        : Colors.yellow[700], // Highlight the first step
                  ),
                );
              }),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(
                  16.0), // Add padding to the entire screen
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20), // Space between status bar and content
                  Text(
                    'ENGINE',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.yellow, // Yellow text color
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              labelText: 'DAMAGE (RUST OR DENT) :',
                              labelStyle: GoogleFonts.montserrat(
                                color: Colors.yellow,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              border: InputBorder.none,
                              isDense:
                                  true, // Reduces the height of the input field
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.mic, color: Colors.yellow),
                          onPressed: () {
                            // Microphone button action
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            maxLines:
                                5, // Adjust this according to the screenshot
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: 'NOTES HERE...',
                              hintStyle: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                              border: InputBorder.none,
                              isDense:
                                  true, // Reduces the height of the input field
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.mic, color: Colors.yellow),
                          onPressed: () {
                            // Microphone button action for the notes field
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      // Add Image button action
                    },
                    icon: Icon(Icons.add_a_photo),
                    label: Text(
                      'ADD IMAGE',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FinalSave()), // Navigate to FinalSave page
                      );
                    },
                    child: Text(
                      'NEXT',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Engine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Engine();
  }
}
