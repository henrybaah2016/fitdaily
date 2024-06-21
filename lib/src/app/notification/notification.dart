import 'package:fitdaily/src/app/app_main/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {


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
                      color: Color(0xffffffff),
                      size: 20.0,
                    ),
                  ),
                ),
              );
            },
          ),
          title: Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Notifications',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:30,top: 10,),
                    child: Padding(
                      padding: const EdgeInsets.only( top: 20,bottom: 5),
                      child: Text(
                        "Today",
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
                    margin: EdgeInsets.only(left:10,top: 30,),
                    decoration: BoxDecoration(
                      color: Color(0xffffbc3c), // Background color
                      borderRadius:
                      BorderRadius.circular(30.0), // Rounded corners
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only( top: 3,bottom: 3,left: 10,right: 10),
                      child: Text(
                        "+4",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.montserrat(
                          height: 1.2,
                          textStyle: const TextStyle(
                            color: Color(0xff000000),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                child: Column(
                  children: [

                    Container(
                      margin: const EdgeInsets.only(top: 10,  right: 10),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Text(
                                      "Daily goals completed",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        height: 2,
                                        textStyle: const TextStyle(
                                          color: Color(0xffe5e3e3),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Congratulation you have",
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

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                            child: Container(
                              alignment: Alignment.topRight,
                              child:Text(
                                "Now",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                child: Column(
                  children: [

                    Container(
                      margin: const EdgeInsets.only(top: 10,  right: 10),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/user_one.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Text(
                                      "Daily goals completed",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        height: 2,
                                        textStyle: const TextStyle(
                                          color: Color(0xffe5e3e3),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Congratulation you have",
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

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                            child: Container(
                              alignment: Alignment.topRight,
                              child:Text(
                                "Now",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                child: Column(
                  children: [

                    Container(
                      margin: const EdgeInsets.only(top: 10,  right: 10),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/user_two.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Text(
                                      "Daily goals completed",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        height: 2,
                                        textStyle: const TextStyle(
                                          color: Color(0xffe5e3e3),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Congratulation you have",
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

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                            child: Container(
                              alignment: Alignment.topRight,
                              child:Text(
                                "Now",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                child: Column(
                  children: [

                    Container(
                      margin: const EdgeInsets.only(top: 10,  right: 10),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/user_three.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Text(
                                      "Daily goals completed",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        height: 2,
                                        textStyle: const TextStyle(
                                          color: Color(0xffe5e3e3),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Congratulation you have",
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

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                            child: Container(
                              alignment: Alignment.topRight,
                              child:Text(
                                "5:00am",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                child: Column(
                  children: [

                    Container(
                      margin: const EdgeInsets.only(top: 10,  right: 10),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/user_four.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Text(
                                      "Daily goals completed",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        height: 2,
                                        textStyle: const TextStyle(
                                          color: Color(0xffe5e3e3),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Congratulation you have",
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

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                            child: Container(
                              alignment: Alignment.topRight,
                              child:Text(
                                "6:00am",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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
                margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                child: Column(
                  children: [

                    Container(
                      margin: const EdgeInsets.only(top: 10,  right: 10),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Text(
                                      "Daily goals completed",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.montserrat(
                                        height: 2,
                                        textStyle: const TextStyle(
                                          color: Color(0xffe5e3e3),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Congratulation you have",
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

                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                            child: Container(
                              alignment: Alignment.topRight,
                              child:Text(
                                "1 day ago",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Color(0xff7c7c7c),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
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

              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left:30,top: 10,),
                        child: Padding(
                          padding: const EdgeInsets.only( top: 20,bottom: 5),
                          child: Text(
                            "This Week",
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
                    margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                    child: Column(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(top: 10,  right: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
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
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: Text(
                                          "Daily goals completed",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            height: 2,
                                            textStyle: const TextStyle(
                                              color: Color(0xffe5e3e3),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Congratulation you have",
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

                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child:Text(
                                    "Now",
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Color(0xff7c7c7c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
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
                    margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                    child: Column(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(top: 10,  right: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/user_one.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: Text(
                                          "Daily goals completed",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            height: 2,
                                            textStyle: const TextStyle(
                                              color: Color(0xffe5e3e3),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Congratulation you have",
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

                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child:Text(
                                    "Now",
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Color(0xff7c7c7c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
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
                    margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                    child: Column(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(top: 10,  right: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/user_two.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: Text(
                                          "Daily goals completed",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            height: 2,
                                            textStyle: const TextStyle(
                                              color: Color(0xffe5e3e3),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Congratulation you have",
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

                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child:Text(
                                    "Now",
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Color(0xff7c7c7c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
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
                    margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                    child: Column(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(top: 10,  right: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/user_three.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: Text(
                                          "Daily goals completed",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            height: 2,
                                            textStyle: const TextStyle(
                                              color: Color(0xffe5e3e3),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Congratulation you have",
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

                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child:Text(
                                    "5:00am",
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Color(0xff7c7c7c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
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
                    margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                    child: Column(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(top: 10,  right: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/user_four.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: Text(
                                          "Daily goals completed",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            height: 2,
                                            textStyle: const TextStyle(
                                              color: Color(0xffe5e3e3),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Congratulation you have",
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

                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child:Text(
                                    "6:00am",
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Color(0xff7c7c7c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
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
                    margin: EdgeInsets.only(top:10,bottom: 10,left: 25,right: 25),
                    child: Column(
                      children: [

                        Container(
                          margin: const EdgeInsets.only(top: 10,  right: 10),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      margin: EdgeInsets.only(right: 10,top:0,bottom: 0),
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
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0.0),
                                        child: Text(
                                          "Daily goals completed",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.montserrat(
                                            height: 2,
                                            textStyle: const TextStyle(
                                              color: Color(0xffe5e3e3),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Congratulation you have",
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

                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,right: 0,bottom: 20),
                                child: Container(
                                  alignment: Alignment.topRight,
                                  child:Text(
                                    "1 day ago",
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Color(0xff7c7c7c),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
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
              )
            ],
          ),

        ),
    );
  }

}
