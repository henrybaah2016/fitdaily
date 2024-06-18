import 'package:fitdaily/src/app/strength/strength.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Workout extends StatefulWidget {
  Workout({Key? key}) : super(key: key);

  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0d0d0d),
        body: SingleChildScrollView(
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
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Workouts",
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

                             Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Container(
                                  height: 24,
                                  width: 24,
                                  child: Image.asset('assets/images/search.png'),
                            ),
                             )],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Strength()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 20,left: 25,right: 25),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/strength.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Strength",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      height: 2.3,
                                      textStyle: const TextStyle(
                                        color: Color(0xffe5e3e3),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "120 workout in total",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffe5e3e3),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                              child: Image.asset('assets/images/play.png'),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 20,left: 25,right: 25),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/cardio.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Cardio",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 2.3,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "20 workout in total",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 1.2,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                            child: Image.asset('assets/images/play.png'),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20,left: 25,right: 25),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/yoga.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Yoga",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 2.3,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "110 poses in total",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 1.2,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                            child: Image.asset('assets/images/play.png'),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20,left: 25,right: 25),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/dumbell.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "Custom",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 2.3,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 250,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Make a blend of what works for you",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.montserrat(
                                      height: 1.2,
                                      textStyle: const TextStyle(
                                        color: Color(0xffe5e3e3),
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
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                            child: Image.asset('assets/images/play.png'),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ));
  }

}
