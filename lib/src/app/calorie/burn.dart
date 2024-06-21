import 'package:fitdaily/src/app/app_main/app.dart';
import 'package:fitdaily/src/app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:toggle_switch/toggle_switch.dart';


class Burn extends StatefulWidget {
  Burn({Key? key}) : super(key: key);

  @override
  _BurnState createState() => _BurnState();
}

class _BurnState extends State<Burn> {


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

        title: Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "Today's Challenge",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Color(0xffc9c7c7),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(

          margin: EdgeInsets.only(top:10,bottom: 30,left:25,right:25),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Center(child: CircularProgressWithIcon()),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "1,875",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xfffdae07),
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0),
                child: Text(
                  "Calories burned",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xffc9c7c7),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 65,
                margin: const EdgeInsets.only(
                    top: 40, left: 10, right: 10, bottom: 10),
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
                    'Go Home',
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
    );
  }

}

class CircularProgressWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: CircularProgressIndicator(
            value: 0.5, // Change this value to indicate progress
            strokeWidth: 18.0,
            backgroundColor: Color(0x992F2B19),
            color: Color(0xfffdae07),

          ),
        ),
        Container(
          width: 60,
          height: 60,
          child: Center(
            child: Image.asset(
                'assets/images/logo_lift.png'),
          ),
        ),
      ],
    );
  }
}
