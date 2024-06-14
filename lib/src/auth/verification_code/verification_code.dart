import 'package:fitdaily/src/auth/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationCode extends StatefulWidget {
  VerificationCode({Key? key}) : super(key: key);

  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
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
              'Phone Verification',
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
                margin: EdgeInsets.symmetric(horizontal: 25,vertical:100),
                decoration: BoxDecoration(
                  color: Color(0xff383838),
                  borderRadius: BorderRadius.circular(
                      16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(
                            left: 25, top: 15, right: 20, bottom: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:14.0),
                              child: Text(
                                "Verify Phone Number",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "We have sent code to your phone number",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xff868686),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 4.0, top: 40),
                              child: Text(
                                "+233 55 727 7506",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xff868686),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:10,left: 25, right: 25),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xff252525),
                                          borderRadius: BorderRadius.circular(
                                              16.0),
                                        ),
                                        margin: EdgeInsets.only(top: 10, bottom: 5),
                                        child: TextField(
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            contentPadding:
                                            EdgeInsets.only(bottom: 0, left: 0),
                                            hintText: '5',
                                            hintStyle: GoogleFonts.montserrat(

                                              textStyle: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 30,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xff252525),
                                          borderRadius: BorderRadius.circular(
                                              16.0),
                                        ),
                                        margin: EdgeInsets.only(top: 10, bottom: 5),
                                        child: TextField(
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            contentPadding:
                                            EdgeInsets.only(bottom: 0, left: 0),
                                            hintText: '8',
                                            hintStyle: GoogleFonts.montserrat(

                                              textStyle: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 30,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xff252525),
                                          borderRadius: BorderRadius.circular(
                                              16.0),
                                        ),
                                        margin: EdgeInsets.only(top: 10, bottom: 5),
                                        child: TextField(
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            contentPadding:
                                            EdgeInsets.only(bottom: 0, left: 0),
                                            hintText: '8',
                                            hintStyle: GoogleFonts.montserrat(

                                              textStyle: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 30,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 65,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Color(0xff252525),
                                          borderRadius: BorderRadius.circular(
                                              16.0),
                                        ),
                                        margin: EdgeInsets.only(top: 10, bottom: 5),
                                        child: TextField(
                                          textAlign: TextAlign.center,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide:
                                              BorderSide(color: Color(0xff252525)),
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            contentPadding:
                                            EdgeInsets.only(bottom: 0, left: 0),
                                            hintText: '7',
                                            hintStyle: GoogleFonts.montserrat(

                                              textStyle: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 30,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0, right: 4.0, top: 0,bottom: 10),
                              child: Text(
                                "(04:30)",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xff868686),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 65,
                        margin: const EdgeInsets.only(
                            top: 10, left: 25, right: 25, bottom: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
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
                            'Verify',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 65,
                        margin: const EdgeInsets.only(
                            top: 0, left: 25, right: 25, bottom: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff252525),
                            minimumSize: const Size(double.infinity, 52),
                            padding:
                            const EdgeInsets.symmetric(horizontal: 45, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: const Text(
                            'Send Again',
                            style: TextStyle(
                              color: Color(0xff7c7c7c),
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}
