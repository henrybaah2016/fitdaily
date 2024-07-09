import 'package:fitdaily/src/app/workout_detail/workout_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Strength extends StatefulWidget {
  Strength({Key? key}) : super(key: key);

  @override
  _StrengthState createState() => _StrengthState();
}

class _StrengthState extends State<Strength> {
  int _selectedValue = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0d0d0d),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                    left: 25, top: 40, right: 25, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff1e1e1e), // Background color
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Rounded corners
                                ),
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Container(
                                          height: 24,
                                          width: 24,
                                          child: Image.asset(
                                              'assets/images/search_grey.png')),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff1e1e1e)),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff1e1e1e)),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff1e1e1e)),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    contentPadding:
                                        EdgeInsets.only(bottom: 0, left: 10),
                                    hintText: 'Strength',
                                    hintStyle: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xff7c7c7c),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.close,
                                  size: 26,
                                  color: Color(0xffffffff),
                                )))
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 25, bottom: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 16, right: 10, left: 5),
                              decoration: BoxDecoration(
                                color: Color(0xff1e1e1e), // Background color
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Color(0xff4b4b4b),
                                  width: 0.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 15),
                                child: Container(
                                  height: 24,
                                    width: 24,
                                    child: Image.asset(
                                        'assets/images/filter.png')),
                              ),
                            ),
                            _buildRadioButton(0, "Time"),
                            _buildRadioButton(1, "Intensity"),
                            _buildRadioButton(2, "Equipment"),
                            _buildRadioButton(3, "Speed"),
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "50 results",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color(0xff7c7c7c),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Icon(
                                  Icons.grid_view,
                                  size: 26,
                                  color: Color(0xffffffff),
                                )),
                            Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: Icon(
                                  Icons.splitscreen,
                                  size: 26,
                                  color: Color(0xffffbc3c),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WorkoutDetail()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                        decoration: BoxDecoration(
                          color: Color(0xff1e1e1e), // Background color
                          borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 105,
                                width: 105,
                                margin: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/strength_one.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 0.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xff916e25), // Background color
                                      borderRadius: BorderRadius.circular(
                                          4.0), // Rounded corners
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0, horizontal: 5),
                                      child: Text(
                                        "Recommeded",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.montserrat(
                                          height: 1.2,
                                          textStyle: const TextStyle(
                                            color: Color(0xffffbc3c),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Text(
                                      "Compound Exercise",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        height: 2,
                                        textStyle: const TextStyle(
                                          color: Color(0xffe5e3e3),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: 4),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 16,
                                                width: 16,
                                                margin:
                                                const EdgeInsets.only(right: 5),
                                                child: Image.asset(
                                                    'assets/images/fire.png'),
                                              ),
                                              Text(
                                                "600 kcal",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.montserrat(
                                                  height: 1.2,
                                                  textStyle: const TextStyle(
                                                    color: Color(0xff7c7c7c),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 16,
                                                width: 16,
                                                margin:
                                                const EdgeInsets.only(right: 5),
                                                child: Image.asset(
                                                    'assets/images/clock.png'),
                                              ),
                                              Text(
                                                "60 min",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.montserrat(
                                                  height: 1.2,
                                                  textStyle: const TextStyle(
                                                    color: Color(0xff7c7c7c),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Column(
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.only(left: 8.0,right: 12,top: 70),
                            //       child: Container(
                            //         height: 24,
                            //         width: 24,
                            //         alignment: Alignment.bottomRight,
                            //         child: Image.asset(
                            //             'assets/images/play_orange.png'),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),

                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                    decoration: BoxDecoration(
                      color: Color(0xff1e1e1e), // Background color
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 105,
                            width: 105,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/strength_two.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff916e25), // Background color
                                  borderRadius: BorderRadius.circular(
                                      4.0), // Rounded corners
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0, horizontal: 5),
                                  child: Text(
                                    "Recommeded",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffbc3c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "Isolation Exercise",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 2,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 16,
                                            width: 16,
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                'assets/images/fire.png'),
                                          ),
                                          Text(
                                            "600 kcal",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xff7c7c7c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 16,
                                            width: 16,
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                'assets/images/clock.png'),
                                          ),
                                          Text(
                                            "60 min",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xff7c7c7c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                    decoration: BoxDecoration(
                      color: Color(0xff1e1e1e), // Background color
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 105,
                            width: 105,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/strength_three.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff916e25), // Background color
                                  borderRadius: BorderRadius.circular(
                                      4.0), // Rounded corners
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0, horizontal: 5),
                                  child: Text(
                                    "Recommeded",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffbc3c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "Weight Exercise",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 2,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 16,
                                            width: 16,
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                'assets/images/fire.png'),
                                          ),
                                          Text(
                                            "600 kcal",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xff7c7c7c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 16,
                                            width: 16,
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                'assets/images/clock.png'),
                                          ),
                                          Text(
                                            "60 min",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xff7c7c7c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                    decoration: BoxDecoration(
                      color: Color(0xff1e1e1e), // Background color
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 105,
                            width: 105,
                            margin: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/strength_four.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 0.0),
                                decoration: BoxDecoration(
                                  color: Color(0xff916e25), // Background color
                                  borderRadius: BorderRadius.circular(
                                      4.0), // Rounded corners
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4.0, horizontal: 5),
                                  child: Text(
                                    "Recommeded",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffbc3c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "Full Strength",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 2,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 16,
                                            width: 16,
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                'assets/images/fire.png'),
                                          ),
                                          Text(
                                            "600 kcal",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xff7c7c7c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 16,
                                            width: 16,
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                                'assets/images/clock.png'),
                                          ),
                                          Text(
                                            "60 min",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xff7c7c7c),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }

  Widget _buildRadioButton(int value, String age) {
    return GestureDetector(
      onTap: () => _handleRadioValueChange(value),
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Container(
          margin: EdgeInsets.only(
            bottom: 16,
          ),
          alignment: Alignment.topLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: _selectedValue == value
                ? Color(0xfffdae07)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _selectedValue == value
                  ? Color(0xfffdae07)
                  : Color(0xff1e1e1e),
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
                      : Color(0xff7c7c7c),
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
