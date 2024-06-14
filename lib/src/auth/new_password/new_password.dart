import 'package:fitdaily/src/auth/login/login.dart';
import 'package:fitdaily/src/auth/signup/signup.dart';
import 'package:fitdaily/src/auth/verification_code/verification_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPassword extends StatefulWidget {
  NewPassword({Key? key}) : super(key: key);

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
              'Set New Password',
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
                  "Enter New \n Password",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                  child: Column(
                    children: [
                      Container(
                        height: 65,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff252525), // Background color
                          borderRadius:
                              BorderRadius.circular(16.0), // Rounded corners
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.remove_red_eye_outlined,
                                color: Color(0xffffffff)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff252525)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            contentPadding:
                                EdgeInsets.only(bottom: 0, left: 10),
                            hintText: 'johndoe@gmail.com',
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
                    ],
                  ),
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
                      MaterialPageRoute(builder: (context) => Login()),
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
                    'Reset Password',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
