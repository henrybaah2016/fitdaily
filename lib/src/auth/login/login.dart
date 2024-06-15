import 'package:fitdaily/src/app/reasons/reasons.dart';
import 'package:fitdaily/src/auth/phone_verification/phone_verification.dart';
import 'package:fitdaily/src/auth/reset_password_email/reset_password_email.dart';
import 'package:fitdaily/src/auth/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0d0d0d),
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
                  decoration: BoxDecoration(
                      color: const Color(0xff252525),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 7, right: 5, top: 5, bottom: 5),
                    child: Icon(
                      Icons.arrow_back_ios,
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
              'Sign in',
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
                  "Continue your daily exercise",
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined,
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
                      Container(
                        height: 65,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff252525), // Background color
                          borderRadius:
                              BorderRadius.circular(16.0), // Rounded corners
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded,
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
                            suffixIcon: Icon(Icons.remove_red_eye_outlined,
                                color: Color(0xffffffff)),
                            contentPadding:
                                EdgeInsets.only(bottom: 0, left: 10),
                            hintText: '...............',
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResetPasswordEmail()),
                          );
                        },
                        child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 4.0, right: 4.0, top: 0,bottom: 10),
                              child: Text(
                                "Forgot password?",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xffffbc3c),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      )


                    ],
                  ),
                ),
              ),
              Container(
                height: 65,
                margin: const EdgeInsets.only(
                    top: 20, left: 25, right: 25, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Reasons()),
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
                    'Login',
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account ? ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xffB3B3B3),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Text(
                        " Create account",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Color(0xff343434),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 0),
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Continue With Account",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xffB3B3B3),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 20,left: 25,right: 25),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 60,
                        margin: const EdgeInsets.only(
                            top: 0, left: 5, right: 5, bottom: 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff252525),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 24,
                                  width: 24,
                                  margin: EdgeInsets.only(right: 10),
                                  child: Image.asset(
                                      'assets/images/google_icon.png')),
                              const Text(
                                'Google',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18,
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
                        height: 60,
                        margin: const EdgeInsets.only(
                            top: 0, left: 5, right: 5, bottom: 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff252525),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 24,
                                  width: 24,
                                  margin: EdgeInsets.only(right: 10),
                                  child: Image.asset(
                                      'assets/images/facebook_icon.png')),
                              const Text(
                                'facebook',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
          
            ],
          ),
        ));
  }
}
