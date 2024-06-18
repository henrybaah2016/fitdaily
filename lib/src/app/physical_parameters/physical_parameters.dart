import 'package:fitdaily/src/app/app_main/app.dart';
import 'package:fitdaily/src/app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../workout_level/workout_level.dart';

class PhysicalParameters extends StatefulWidget {
  PhysicalParameters({Key? key}) : super(key: key);

  @override
  _PhysicalParametersState createState() => _PhysicalParametersState();
}

class _PhysicalParametersState extends State<PhysicalParameters> {
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
                  "Age",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    height: 1.2,
                    textStyle: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                  child: Row(

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:4.0),
                                  child: _buildRadioButton(0,"18-24"),
                                ),
                                _buildRadioButton(1,"25-34"),
                                _buildRadioButton(2,"35-44"),
                                _buildRadioButton(3,"45-54"),
                              ],
                            ),
                          ),


                          Row(
                            children: [
                              _buildRadioButton(4,"55-64"),
                              _buildRadioButton(5,"65+"),
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    left: 25, top: 30, right: 20, bottom: 10),
                child: Text(
                  "Weight",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    height: 1.2,
                    textStyle: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                  child: Row(

                    children: [
                      Container(
                        height: 35,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff0d0d0d), // Background color
                          borderRadius:
                          BorderRadius.circular(0.0), // Rounded corners
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10,right: 10),
                        child: TextField(
                          style: TextStyle(
                            color: Color(0xff7c7c7c),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(0),
                            ),

                            hintText: '98',
                            hintStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color(0xff7c7c7c),
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        child: ToggleSwitch(
                          minWidth: 50.0,
                          minHeight: 35,
                          cornerRadius: 10.0,
                          activeBgColors: [
                            [Color(0xfffdae07)],
                            [Color(0xfffdae07)],
                          ],

                          activeFgColor: Color(0xff0d0d0d),
                          inactiveBgColor: Color(0xff424242),
                          inactiveFgColor: Color(0xffa1a1a1),
                          initialLabelIndex: 0,
                          totalSwitches: 2,
                          labels: ['kg', 'Lbs'],
                          radiusStyle: true,
                          onToggle: (index) {
                            print('switched to: $index');
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    left: 25, top: 30, right: 20, bottom: 10),
                child: Text(
                  "Height",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    height: 1.2,
                    textStyle: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                  child: Row(

                    children: [
                      Container(
                        height: 35,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff0d0d0d), // Background color
                          borderRadius:
                          BorderRadius.circular(0.0), // Rounded corners
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10,right: 10),
                        child: TextField(
                          style: TextStyle(
                            color: Color(0xff7c7c7c),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(

                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(0),
                            ),

                            hintText: '173',
                            hintStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color(0xff7c7c7c),
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        child: ToggleSwitch(
                          minWidth: 50.0,
                          minHeight: 35,
                          cornerRadius: 10.0,
                          activeBgColors: [
                            [Color(0xfffdae07)],
                            [Color(0xfffdae07)],
                          ],

                          activeFgColor: Color(0xff0d0d0d),
                          inactiveBgColor: Color(0xff424242),
                          inactiveFgColor: Color(0xffa1a1a1),
                          initialLabelIndex: 1,
                          totalSwitches: 2,
                          labels: ['cm', 'ft'],
                          radiusStyle: true,
                          onToggle: (index) {
                            print('switched to: $index');
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              ),


              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                    left: 25, top: 30, right: 20, bottom: 10),
                child: Text(
                  "BMI",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    height: 1.2,
                    textStyle: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                    child: Text(
                      "Your BMI is 26 which means you are overweight (According to your height your weight must be between 55-75 kgs in order to be considered healthy)"
                      ,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.montserrat(
                        height: 1.2,
                        textStyle: TextStyle(
                          color: Color(0xffcccccc),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
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
                      MaterialPageRoute(builder: (context) => AppMain()),
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
      int value,String age) {
    return GestureDetector(
      onTap: () => _handleRadioValueChange(value),
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 80,
          margin: EdgeInsets.only(bottom: 16,),
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
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
          child: Container(
            alignment: Alignment.center,
            child: Text(
              age,
              textAlign: TextAlign.center,
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
          ),
        ),
      ),
    );
  }
}
