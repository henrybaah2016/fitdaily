import 'package:fitdaily/src/app/app_main/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../watch/video_player_screen.dart';

class WorkoutDetail extends StatefulWidget {
  WorkoutDetail({Key? key}) : super(key: key);

  @override
  _WorkoutDetailState createState() => _WorkoutDetailState();
}

class _WorkoutDetailState extends State<WorkoutDetail> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0d0d0d),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 40,
                  width: 20,
                  margin: const EdgeInsets.only(top: 20, left: 20),

                  child: const Padding(
                    padding:
                    EdgeInsets.only(left: 7, right: 5, top: 5, bottom: 5),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color(0xff7c7c7c),
                      size: 20.0,
                    ),
                  ),
                ),
              );
            },
          ),

        ),
        body: Stack(
          children: <Widget>[
            // Your main content goes here
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child:Container(
                          height: 300,
                          margin: EdgeInsets.only(left: 25,right: 25,bottom:470),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/strength_one.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Bottom container
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xff1e1e1e),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff1e1e1e),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top:10,bottom: 30),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left:10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  "Compound Exercise",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 2,
                                    textStyle: const TextStyle(
                                      color: Color(0xffe5e3e3),
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Container(
                                      margin: const EdgeInsets.only(top: 6,right: 15),
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
                                            "1hr 30 min",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xffd5d5d5),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 6),
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
                                            "120 min",
                                            textAlign: TextAlign.left,
                                            style: GoogleFonts.montserrat(
                                              height: 1.2,
                                              textStyle: const TextStyle(
                                                color: Color(0xffd5d5d5),
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
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                          child: Column(
                            children: [
                              Text(
                                "Improve your body shape to be more ideal with various tutorial videos for you that can help achievement",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                  height: 1.2,
                                  textStyle: const TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:10,top: 10,),
                              child: Padding(
                                padding: const EdgeInsets.only( top: 20,bottom: 5),
                                child: Text(
                                  "Episode",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 1.2,
                                    textStyle: const TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left:10,top: 10,right: 10),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 10,bottom: 0),
                                child: Text(
                                  "1-10",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.montserrat(
                                    height: 1.2,
                                    textStyle: const TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Color(0xff313131), // Background color
                            borderRadius:
                            BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.only(left: 10, right: 10,top:10,bottom: 10),
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
                                    horizontal: 0.0, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        "1. Lifting Exercise",
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
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 6,right: 15),
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
                                          Container(
                                            margin: const EdgeInsets.only(top: 6),
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
                          margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Color(0xff313131), // Background color
                            borderRadius:
                            BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.only(left: 10, right: 10,top:10,bottom: 10),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/running_one.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0.0, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: Text(
                                        "2. Running",
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
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 6,right: 15),
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
                                          Container(
                                            margin: const EdgeInsets.only(top: 6),
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
                          height: 65,
                          margin: const EdgeInsets.only(
                              top: 40, left: 10, right: 10, bottom: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FlexiDemo()),
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
                              'Start Workout',
                              style: TextStyle(
                                color: Color(0xff0d0d0d),
                                fontSize: 16,
                              ),
                            ),
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
    );
  }

}
