import 'package:fitdaily/src/app/notification/notification.dart';
import 'package:fitdaily/src/app/workout/workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                            "FitDaily",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              height: 1.2,
                              textStyle: const TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                         Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Notifications()),
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  child: Image.asset('assets/images/calendar.png'),
                                ),
                              ),
                            ),

                             Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Container(
                                  height: 24,
                                  width: 24,
                                  child: Image.asset('assets/images/bookmark.png'),
                            ),
                             )],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8),
                      child: Text(
                        "Good morning John!",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          height: 1.2,
                          textStyle: const TextStyle(
                            color: Color(0xff9d9d9d),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:25,top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 20,bottom: 5),
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
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10,left: 25,right: 25),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/dumbell.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),

                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,bottom: 20),
                        child: Text(
                          "Dumbbell Squats: 3 sets of 12-15 reps",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left:20),
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            child: Image.asset('assets/images/play.png'),
                          ),

                          Container(
                            height: 24,
                            width: 24,
                            margin: const EdgeInsets.only(bottom: 25,right: 20),
                            child:  const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xffe5e3e3),
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom:25),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,bottom: 0),
                                  child: Text(
                                    "Trim & Tone",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffe5e3e3),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(right: 25,top:20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 20,
                                            margin: const EdgeInsets.only(right: 5),
                                            child:   Image.asset('assets/images/fire.png'),
                                          ),
                                          Text(
                                            "600-900 kcal",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xffe5e3e3),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 0,bottom: 0),
                                  child:Container(
                                    width: 120,
                                    child: Text(
                                      "Intensity Workout",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        height: 1.1,
                                        textStyle: const TextStyle(
                                          color: Color(0xffe5e3e3),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(right: 50,top:0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        margin: const EdgeInsets.only(right: 5),
                                        child:   Image.asset('assets/images/clock.png'),
                                      ),
                                      Text(
                                        "50-60 min",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.montserrat(
                                          height: 1.2,
                                          textStyle: const TextStyle(
                                            color: Color(0xffe5e3e3),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
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
                  )
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:25,top: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 20,bottom: 5),
                            child: Text(
                              "Top Picks for Intermediate",
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
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Workout()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(left:25,top: 10,right: 25),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 10,bottom: 0),
                              child: Text(
                                "See all",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                  height: 1.2,
                                  textStyle: const TextStyle(
                                    color: Color(0xffffbc3c),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )

                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(left:25,right:25),
                      child: Row(
                        children: [
                         Expanded(
                           flex: 1,
                           child:  Container(
                             margin: const EdgeInsets.only(top: 10),
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
                                     Center(
                                         child: Container(
                                           height: 30,
                                           width: 30,
                                           margin: const EdgeInsets.only(top: 80,right: 25,bottom: 10,left: 30),
                                           child: Image.asset('assets/images/play.png'),
                                         )
                                     ),

                                     Container(
                                       margin: EdgeInsets.only(bottom:25,left: 5,right: 5),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Padding(
                                                 padding: const EdgeInsets.only(right: 5,top: 20,bottom: 0),
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
                                                 padding: const EdgeInsets.only(right: 5,top: 0,bottom: 0),
                                                 child:Container(
                                                   width: 60,
                                                   child: Text(
                                                     "Body Circuit",
                                                     textAlign: TextAlign.left,
                                                     style: GoogleFonts.montserrat(
                                                       height: 1.1,
                                                       textStyle: const TextStyle(
                                                         color: Color(0xffe5e3e3),
                                                         fontSize: 16,
                                                         fontWeight: FontWeight.w400,
                                                       ),
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                             ],
                                           ),
                                           Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Container(
                                                 margin: const EdgeInsets.only(top:20),
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.start,
                                                   children: [
                                                     Container(
                                                       height: 16,
                                                       width: 16,
                                                       margin: const EdgeInsets.only(right: 5),
                                                       child:   Image.asset('assets/images/fire.png'),
                                                     ),
                                                     Text(
                                                       "600 kcal",
                                                       textAlign: TextAlign.left,
                                                       style: GoogleFonts.montserrat(
                                                         height: 1.2,
                                                         textStyle: const TextStyle(
                                                           color: Color(0xffe5e3e3),
                                                           fontSize: 14,
                                                           fontWeight: FontWeight.w500,
                                                         ),
                                                       ),
                                                     ),
                                                   ],
                                                 ),
                                               ),
                                               Container(
                                                 margin: const EdgeInsets.only(top:10),
                                                 child: Row(
                                                   mainAxisAlignment: MainAxisAlignment.start,
                                                   children: [
                                                     Container(
                                                       height: 16,
                                                       width: 16,
                                                       margin: const EdgeInsets.only(right: 5),
                                                       child:   Image.asset('assets/images/clock.png'),
                                                     ),
                                                     Text(
                                                       "60 min",
                                                       textAlign: TextAlign.left,
                                                       style: GoogleFonts.montserrat(
                                                         height: 1.2,
                                                         textStyle: const TextStyle(
                                                           color: Color(0xffe5e3e3),
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
                                         ],
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child:  Container(
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/running_one.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(16),

                              ),
                              child: Container(

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      Center(
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            margin: const EdgeInsets.only(top: 80,right: 25,bottom: 10,left: 30),
                                            child: Image.asset('assets/images/play.png'),
                                          )
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(bottom:25,left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 5,top: 20,bottom: 0),
                                                  child: Text(
                                                    "Interval",
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
                                                  padding: const EdgeInsets.only(right: 5,top: 0,bottom: 0),
                                                  child:Container(
                                                    width: 60,
                                                    child: Text(
                                                      "Running Workout",
                                                      textAlign: TextAlign.left,
                                                      style: GoogleFonts.montserrat(
                                                        height: 1.1,
                                                        textStyle: const TextStyle(
                                                          color: Color(0xffe5e3e3),
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(top:20),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 16,
                                                        width: 16,
                                                        margin: const EdgeInsets.only(right: 5),
                                                        child:   Image.asset('assets/images/fire.png'),
                                                      ),
                                                      Text(
                                                        "600 kcal",
                                                        textAlign: TextAlign.left,
                                                        style: GoogleFonts.montserrat(
                                                          height: 1.2,
                                                          textStyle: const TextStyle(
                                                            color: Color(0xffe5e3e3),
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(top:10),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 16,
                                                        width: 16,
                                                        margin: const EdgeInsets.only(right: 5),
                                                        child:   Image.asset('assets/images/clock.png'),
                                                      ),
                                                      Text(
                                                        "60 min",
                                                        textAlign: TextAlign.left,
                                                        style: GoogleFonts.montserrat(
                                                          height: 1.2,
                                                          textStyle: const TextStyle(
                                                            color: Color(0xffe5e3e3),
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:25,top: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 20,bottom: 5),
                            child: Text(
                              "Top Picks for Weight Magt",
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
                        Container(
                          margin: EdgeInsets.only(left:25,top: 10,right: 25),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 10,bottom: 0),
                            child: Text(
                              "See all",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                height: 1.2,
                                textStyle: const TextStyle(
                                  color: Color(0xffffbc3c),
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
                      margin: EdgeInsets.only(left:25,right:25),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child:  Container(
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/user_one.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(16),

                              ),
                              child: Container(

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                      Center(
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            margin: const EdgeInsets.only(top: 80,right: 25,bottom: 10,left: 30),
                                            child: Image.asset('assets/images/play.png'),
                                          )
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(bottom:25,left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 5,top: 20,bottom: 0),
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
                                                  padding: const EdgeInsets.only(right: 5,top: 0,bottom: 0),
                                                  child:Container(
                                                    width: 60,
                                                    child: Text(
                                                      "Body Circuit",
                                                      textAlign: TextAlign.left,
                                                      style: GoogleFonts.montserrat(
                                                        height: 1.1,
                                                        textStyle: const TextStyle(
                                                          color: Color(0xffe5e3e3),
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(top:20),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 16,
                                                        width: 16,
                                                        margin: const EdgeInsets.only(right: 5),
                                                        child:   Image.asset('assets/images/fire.png'),
                                                      ),
                                                      Text(
                                                        "600 kcal",
                                                        textAlign: TextAlign.left,
                                                        style: GoogleFonts.montserrat(
                                                          height: 1.2,
                                                          textStyle: const TextStyle(
                                                            color: Color(0xffe5e3e3),
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(top:10),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 16,
                                                        width: 16,
                                                        margin: const EdgeInsets.only(right: 5),
                                                        child:   Image.asset('assets/images/clock.png'),
                                                      ),
                                                      Text(
                                                        "60 min",
                                                        textAlign: TextAlign.left,
                                                        style: GoogleFonts.montserrat(
                                                          height: 1.2,
                                                          textStyle: const TextStyle(
                                                            color: Color(0xffe5e3e3),
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child:  Container(
                              margin: const EdgeInsets.only(top: 10),
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
                                      Center(
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            margin: const EdgeInsets.only(top: 80,right: 25,bottom: 10,left: 30),
                                            child: Image.asset('assets/images/play.png'),
                                          )
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(bottom:25,left: 5,right: 5),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 5,top: 20,bottom: 0),
                                                  child: Text(
                                                    "Interval",
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
                                                  padding: const EdgeInsets.only(right: 5,top: 0,bottom: 0),
                                                  child:Container(
                                                    width: 60,
                                                    child: Text(
                                                      "Running Workout",
                                                      textAlign: TextAlign.left,
                                                      style: GoogleFonts.montserrat(
                                                        height: 1.1,
                                                        textStyle: const TextStyle(
                                                          color: Color(0xffe5e3e3),
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(top:20),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 16,
                                                        width: 16,
                                                        margin: const EdgeInsets.only(right: 5),
                                                        child:   Image.asset('assets/images/fire.png'),
                                                      ),
                                                      Text(
                                                        "600 kcal",
                                                        textAlign: TextAlign.left,
                                                        style: GoogleFonts.montserrat(
                                                          height: 1.2,
                                                          textStyle: const TextStyle(
                                                            color: Color(0xffe5e3e3),
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(top:10),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 16,
                                                        width: 16,
                                                        margin: const EdgeInsets.only(right: 5),
                                                        child:   Image.asset('assets/images/clock.png'),
                                                      ),
                                                      Text(
                                                        "60 min",
                                                        textAlign: TextAlign.left,
                                                        style: GoogleFonts.montserrat(
                                                          height: 1.2,
                                                          textStyle: const TextStyle(
                                                            color: Color(0xffe5e3e3),
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
        ));
  }

}
