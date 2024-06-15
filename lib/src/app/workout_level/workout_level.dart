import 'package:fitdaily/src/app/physical_parameters/physical_parameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutLevel extends StatefulWidget {
  WorkoutLevel({Key? key}) : super(key: key);

  @override
  _WorkoutLevelState createState() => _WorkoutLevelState();
}

class _WorkoutLevelState extends State<WorkoutLevel> {
  int _selectedValue = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0d0d0d),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "Let's get to know you",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    left: 25, top: 60, right: 20, bottom: 10),
                child: Text(
                  "Your Workout Level",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    height: 1.2,
                    textStyle: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                  child: Column(
                    children: [
                      _buildRadioButton(0, Icons.directions_walk, "Beginner",
                          "Designed for individuals who are new to regular exercise or returning after an extended break"),
                      SizedBox(height: 10),
                      _buildRadioButton(
                          1,
                          Icons.directions_run,
                          "Intermediate",
                          "Suited for individuals with some prior fitness experience or those  transitioning from the beginner level"),
                      SizedBox(height: 10),
                      _buildRadioButton(2, Icons.settings_accessibility, "Expert",
                          "Tailored for individuals with a high level of fitness and experience in regular, intense workouts"),
                    ],
                  ),
                ),
              ),
              Container(
                height: 65,
                margin: const EdgeInsets.only(
                    top: 40, left: 25, right: 25, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhysicalParameters()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfffdae07),
                    minimumSize: const Size(double.infinity, 52),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 45, vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Color(0xff0d0d0d),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildRadioButton(
      int value, IconData icon, String textTitle, String desc) {
    return GestureDetector(
      onTap: () => _handleRadioValueChange(value),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:
              _selectedValue == value ? Color(0xfffdae07) : Color(0xff0d0d0d),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color:
                _selectedValue == value ? Color(0xfffdae07) : Color(0xff343434),
            width: 0.5,
          ),
        ),
        child: Row(
          children: [
            Container(
                child: Icon(
              icon,
              color: _selectedValue == value
                  ? Color(0xff0d0d0d)
                  : Color(0xffffffff),
            )),
            SizedBox(
              height: 0,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    textTitle,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: _selectedValue == value
                            ? Color(0xff0d0d0d)
                            : Color(0xffffffff),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 250),
                    child: Text(
                      desc,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: _selectedValue == value
                              ? Color(0xff0d0d0d)
                              : Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
