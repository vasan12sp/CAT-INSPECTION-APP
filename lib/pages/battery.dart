import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'exterior.dart'; // Import the Exterior page

class Battery extends StatefulWidget {
  @override
  _BatteryState createState() => _BatteryState();
}

class _BatteryState extends State<Battery> {
  String _voiceIconPath = 'assets/vectors/voice_icon.svg';

  void _handleVoiceButtonPress() {
    setState(() {
      _voiceIconPath = 'assets/vectors/vector_24_x2.svg';
    });
    print('Voice input triggered');
  }

  void _handleAddImageButtonPress() {
    print('Add Image button pressed');
  }

  void _handleNextButtonPress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Exterior()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xCC000000),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Battery Status Indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      color: index < 3 ? Color(0xFFF4BC1C) : Color(0x80FFFFFF),
                    ),
                    height: 4.0,
                  ),
                );
              }),
            ),
            SizedBox(height: 16),

            // Battery Header
            Text(
              'BATTERY',
              style: GoogleFonts.getFont(
                'Montserrat',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Color(0xFFF4BC1C),
              ),
            ),
            SizedBox(height: 16),

            // Battery Make
            _buildFieldRow('BATTERY MAKE:', 'ABC'),

            // Replacement Date
            _buildFieldRow('REPLACEMENT DATE:', '123'),

            // Battery Voltage
            _buildFieldRow('BATTERY VOLTAGE:', '12V'),

            SizedBox(height: 16),

            // Scan Button
            _buildActionButton('SCAN', Color(0xFFF4BC1C)),

            SizedBox(height: 16),

            // Battery Water Level
            _buildRadioRow(
              'BATTERY WATER LEVEL:',
              'GOOD',
              'assets/vectors/vector_10_x2.svg',
              () {
                print('Battery water level button pressed');
              },
            ),

            // Condition (Damage)
            _buildRadioRow(
              'CONDITION (DAMAGE):',
              'YES',
              'assets/vectors/vector_6_x2.svg',
              () {
                print('Condition damage button pressed');
              },
            ),

            SizedBox(height: 16),

            // Add Image Button
            _buildActionButton('ADD IMAGE', Color(0xFFF4BC1C),
                onPressed: _handleAddImageButtonPress),

            SizedBox(height: 16),

            // Leak / Dust
            _buildRadioRow(
              'LEAK / DUST:',
              'GOOD',
              'assets/vectors/vector_15_x2.svg',
              () {
                print('Leak dust button pressed');
              },
            ),

            Spacer(),

            // Voice Input Button
            _buildIconButton(_voiceIconPath, _handleVoiceButtonPress),

            SizedBox(height: 16),

            // Next Button
            _buildActionButton('NEXT', Color(0xFFF4BC1C),
                onPressed: _handleNextButtonPress),
          ],
        ),
      ),
    );
  }

  Widget _buildFieldRow(String label, String value) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.getFont(
              'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFD9D9D9)),
              borderRadius: BorderRadius.circular(5),
              color: Color(0xFF2D2D2D),
            ),
            child: Center(
              child: Text(
                value,
                style: GoogleFonts.getFont(
                  'Montserrat',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioRow(String label, String selectedOption, String assetPath,
      VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.getFont(
              'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(5),
                color: Color(0xFF2D2D2D),
              ),
              child: Center(
                child: Text(
                  selectedOption,
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          GestureDetector(
            onTap: onPressed,
            child: SvgPicture.asset(
              assetPath,
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, Color color,
      {VoidCallback? onPressed}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Color(0x4D000000),
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: onPressed ??
            () {
              print('$label button pressed');
            },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              label,
              style: GoogleFonts.getFont(
                'Montserrat',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(String assetPath, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: IconButton(
        icon: SvgPicture.asset(
          assetPath,
          width: 35,
          height: 35,
        ),
        onPressed: onPressed,
        color: Color(0xFFF4BC1C),
      ),
    );
  }
}
