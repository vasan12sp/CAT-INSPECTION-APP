import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'tires.dart';
import 'battery.dart';

class _Header extends StatefulWidget {
  header createState() => header();
}

class header extends State<_Header> {
  String _locationText = 'GET LOCATION';
  String _serviceMeterHours =
      '123'; // Initial value for the service meter field
  late stt.SpeechToText _speechToText;
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _speechToText = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xCC000000),
          ),
          padding: EdgeInsets.fromLTRB(20.2, 54, 20.2, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(4.8, 0, 9, 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProgressIndicator(0xFFF4BC1C),
                    _buildProgressIndicator(0x80FFFFFF),
                    _buildProgressIndicator(0x80FFFFFF),
                    _buildProgressIndicator(0x80FFFFFF),
                    _buildProgressIndicator(0x80FFFFFF),
                    _buildProgressIndicator(0x80FFFFFF),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4.3, 0, 4.3, 16),
                child: Text(
                  'TRUCK DETAILS',
                  style: GoogleFonts.getFont(
                    'Montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xFFF4BC1C),
                  ),
                ),
              ),
              _buildTextField('INSPECTION ID :', '123'),
              _buildTextField('SERIAL NUMBER :', '123'),
              _buildTextField('MODEL :', '123'),
              _buildTextField('CUSTOMER NAME :', '123'),
              _buildTextField('CUSTOMER ID :', '123'),
              _buildScanButton(context),
              _buildServiceMeterRow(context),
              _buildSpecificationsButton(context),
              _buildNextButton(context),
              SizedBox(height: 20), // Spacing before the "Get Location" button
              _buildGetLocationButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressIndicator(int color) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
        decoration: BoxDecoration(
          color: Color(color),
        ),
        height: 8, // Height adjusted for visibility
      ),
    );
  }

  Widget _buildTextField(String label, String initialValue) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: GoogleFonts.getFont(
                'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: TextFormField(
              initialValue: initialValue,
              style: GoogleFonts.getFont(
                'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScanButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 30.5),
      child: ElevatedButton(
        onPressed: () {
          // Add your scan button logic here
          print('Scan button pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF4BC1C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.symmetric(vertical: 10),
          minimumSize: Size(double.infinity, 48),
        ),
        child: Text(
          'SCAN',
          style: GoogleFonts.getFont(
            'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }

  Widget _buildServiceMeterRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'SERVICE METER HOURS:',
            style: GoogleFonts.getFont(
              'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Expanded(
            child: TextFormField(
              initialValue: _serviceMeterHours,
              style: GoogleFonts.getFont(
                'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () async {
              if (!_isListening) {
                bool available = await _speechToText.initialize();
                if (available) {
                  setState(() => _isListening = true);
                  _speechToText.listen(
                    onResult: (result) {
                      setState(() {
                        _serviceMeterHours = result.recognizedWords;
                      });
                    },
                    listenFor: Duration(seconds: 10),
                    pauseFor: Duration(seconds: 5),
                    partialResults: true,
                    onSoundLevelChange: (level) => print('Sound level: $level'),
                    cancelOnError: true,
                    listenMode: stt.ListenMode.dictation,
                  );
                }
              } else {
                setState(() => _isListening = false);
                _speechToText.stop();
              }
            },
            icon: SvgPicture.asset('assets/vectors/vector_12_x2.svg'),
            iconSize: 30,
            padding: EdgeInsets.all(0),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecificationsButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: ElevatedButton(
        onPressed: () {
          // Add your logic for specifications button here
          print('Specifications button pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF4BC1C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.symmetric(vertical: 10),
          minimumSize: Size(double.infinity, 48),
        ),
        child: Text(
          'SEE CUSTOMER SPECIFICATIONS',
          style: GoogleFonts.getFont(
            'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Battery()), // Replace with the target page class
          );
          print('Next button pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF4BC1C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.symmetric(vertical: 10),
          minimumSize: Size(double.infinity, 48),
        ),
        child: Text(
          'NEXT',
          style: GoogleFonts.getFont(
            'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }

  Widget _buildGetLocationButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: ElevatedButton(
        onPressed: () async {
          try {
            Position position = await _determinePosition();
            List<Placemark> placemarks = await placemarkFromCoordinates(
                position.latitude, position.longitude);
            Placemark placemark = placemarks[0];
            setState(() {
              _locationText =
                  '${placemark.street}, ${placemark.locality}, ${placemark.country}';
            });
          } catch (e) {
            setState(() {
              _locationText = 'Failed to get location';
            });
            print('Error: $e');
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF4BC1C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.symmetric(vertical: 10),
          minimumSize: Size(double.infinity, 48),
        ),
        child: Text(
          _locationText,
          style: GoogleFonts.getFont(
            'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error('Location permissions are denied');
      }
    }

    return await Geolocator.getCurrentPosition();
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Header();
  }
}
