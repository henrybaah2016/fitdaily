import 'package:fitdaily/src/app/workout/workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Food extends StatefulWidget {
  Food({Key? key}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
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
                    left: 25, top: 40, right: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Food",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Container(
                                height: 20,
                                width: 20,
                                child: Image.asset('assets/images/fav.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Container(
                                height: 20,
                                width: 20,
                                child: Image.asset('assets/images/filter.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Container(
                                height: 20,
                                width: 20,
                                child: Image.asset('assets/images/search.png'),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 0),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 20, bottom: 5),
                      child: Text(
                        "Recommended",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          height: 1.2,
                          textStyle: const TextStyle(
                            color: Color(0xff9d9d9d),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: 25,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 15),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/woman_one.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 24,
                                        width: 24,
                                        alignment: Alignment.topRight,
                                        margin: const EdgeInsets.only(
                                            top: 20,
                                            right: 10,
                                            bottom: 80,
                                            left: 120),
                                        child: Image.asset(
                                            'assets/images/fav.png'),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: 25, left: 5, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, top: 20, bottom: 0),
                                              child: Text(
                                                "Full",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.montserrat(
                                                  height: 1.2,
                                                  textStyle: const TextStyle(
                                                    color: Color(0xffe5e3e3),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, top: 0, bottom: 0),
                                              child: Container(
                                                width: 60,
                                                child: Text(
                                                  "Body Circuit",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.montserrat(
                                                    height: 1.1,
                                                    textStyle: const TextStyle(
                                                      color: Color(0xffe5e3e3),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    child: Image.asset(
                                                        'assets/images/fire.png'),
                                                  ),
                                                  Text(
                                                    "600 kcal",
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      height: 1.2,
                                                      textStyle:
                                                          const TextStyle(
                                                        color:
                                                            Color(0xffe5e3e3),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    child: Image.asset(
                                                        'assets/images/clock.png'),
                                                  ),
                                                  Text(
                                                    "60 min",
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      height: 1.2,
                                                      textStyle:
                                                          const TextStyle(
                                                        color:
                                                            Color(0xffe5e3e3),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 15),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/running_one.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 24,
                                        width: 24,
                                        alignment: Alignment.topRight,
                                        margin: const EdgeInsets.only(
                                            top: 20,
                                            right: 10,
                                            bottom: 80,
                                            left: 120),
                                        child: Image.asset(
                                            'assets/images/fav.png'),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: 25, left: 5, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, top: 20, bottom: 0),
                                              child: Text(
                                                "Full",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.montserrat(
                                                  height: 1.2,
                                                  textStyle: const TextStyle(
                                                    color: Color(0xffe5e3e3),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, top: 0, bottom: 0),
                                              child: Container(
                                                width: 60,
                                                child: Text(
                                                  "Body Circuit",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.montserrat(
                                                    height: 1.1,
                                                    textStyle: const TextStyle(
                                                      color: Color(0xffe5e3e3),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    child: Image.asset(
                                                        'assets/images/fire.png'),
                                                  ),
                                                  Text(
                                                    "600 kcal",
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      height: 1.2,
                                                      textStyle:
                                                          const TextStyle(
                                                        color:
                                                            Color(0xffe5e3e3),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    child: Image.asset(
                                                        'assets/images/clock.png'),
                                                  ),
                                                  Text(
                                                    "60 min",
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      height: 1.2,
                                                      textStyle:
                                                          const TextStyle(
                                                        color:
                                                            Color(0xffe5e3e3),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 15),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/user_three.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 24,
                                        width: 24,
                                        alignment: Alignment.topRight,
                                        margin: const EdgeInsets.only(
                                            top: 20,
                                            right: 10,
                                            bottom: 80,
                                            left: 120),
                                        child: Image.asset(
                                            'assets/images/fav.png'),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: 25, left: 5, right: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, top: 20, bottom: 0),
                                              child: Text(
                                                "Full",
                                                textAlign: TextAlign.left,
                                                style: GoogleFonts.montserrat(
                                                  height: 1.2,
                                                  textStyle: const TextStyle(
                                                    color: Color(0xffe5e3e3),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5, top: 0, bottom: 0),
                                              child: Container(
                                                width: 60,
                                                child: Text(
                                                  "Body Circuit",
                                                  textAlign: TextAlign.left,
                                                  style: GoogleFonts.montserrat(
                                                    height: 1.1,
                                                    textStyle: const TextStyle(
                                                      color: Color(0xffe5e3e3),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    child: Image.asset(
                                                        'assets/images/fire.png'),
                                                  ),
                                                  Text(
                                                    "600 kcal",
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      height: 1.2,
                                                      textStyle:
                                                          const TextStyle(
                                                        color:
                                                            Color(0xffe5e3e3),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    child: Image.asset(
                                                        'assets/images/clock.png'),
                                                  ),
                                                  Text(
                                                    "60 min",
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      height: 1.2,
                                                      textStyle:
                                                          const TextStyle(
                                                        color:
                                                            Color(0xffe5e3e3),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 20),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, top: 20, bottom: 5),
                      child: Text(
                        "Categories",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          height: 1.2,
                          textStyle: const TextStyle(
                            color: Color(0xff9d9d9d),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                                BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                    height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/breakfast.png')),
                                ),
                                 Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Breakfast',
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),

                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                            BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/lunch.png')),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Lunch',
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),

                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                            BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/dinner.png')),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Dinner',
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                            BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/veg.png')),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Veg',
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),

                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                            BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/non_veg.png')),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Non Veg',
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),

                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                            BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:2,bottom: 2,left:8,right:8),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/kcal.png')),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Low Calories',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                            BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:2,bottom: 2,left:12,right:12),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/sugar_free.png')),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Sugar Free',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),

                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                            BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/protein.png')),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Protein',
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),

                          decoration: BoxDecoration(
                            color: Color(0xff1e1e1e), // Background color
                            borderRadius:
                            BorderRadius.circular(16.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,bottom: 12),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      child: Image.asset('assets/images/carbs.png')),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Carbs',
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              )

            ],
          ),
        ));
  }
}
