import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Strength extends StatefulWidget {
  Strength({Key? key}) : super(key: key);

  @override
  _StrengthState createState() => _StrengthState();
}

class _StrengthState extends State<Strength> {
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
                    margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                    decoration: BoxDecoration(
                      color: Color(0xff1e1e1e), // Background color
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:100,
                              width: 100,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/user_two.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(16),

                              ),),
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
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 16,
                                                width: 16,
                                                margin: const EdgeInsets.only(
                                                    right: 5),
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
                                          height: 24,
                                          width: 24,
                                          child: Image.asset(
                                              'assets/images/play_orange.png'),
                                        ),

                                      ],
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
        ));
  }
}
