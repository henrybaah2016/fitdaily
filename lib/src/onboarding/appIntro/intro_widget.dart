import 'package:fitdaily/src/auth/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.color,
    required this.title,
    required this.description,
    required this.skip,
    required this.image,
    required this.onTab,
    required this.index,
  });

  final String color;
  final String title;
  final String description;
  final bool skip;
  final String image;
  final VoidCallback onTab;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          top: 60,
          child: Container(
            width: 90,
            height: 40,
            margin: EdgeInsets.only(right: 30),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Color(0xff000000), // Border color
                width: 2, // Border width
              ),
              borderRadius: BorderRadius.circular(100), // Rounded corners
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(color: Color(0xff000000)),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 90,
                    height: 40,
                    margin: EdgeInsets.only(right: 30, bottom: 220),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color(0xffffffff), // Border color
                        width: 2, // Border width
                      ),
                      borderRadius:
                          BorderRadius.circular(100), // Rounded corners
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Navigate to the second page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.90,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      topLeft: index == 0
                          ? const Radius.circular(100)
                          : const Radius.circular(0),
                      topRight: index == 2
                          ? const Radius.circular(100)
                          : const Radius.circular(0),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 62,
                      ),
                      Text(title,
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 26,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w600))),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(description,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 24,
                                height: 1.5,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff)),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16),
                  child: skip
                      ? Container(
                          height: 57,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          decoration: BoxDecoration(
                              color: Color(0xfffdae07),
                              borderRadius: BorderRadius.circular(20)),
                          child: SizedBox(
                            child: MaterialButton(
                              elevation: 0,
                              color: Color(0xfffdae07),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              onPressed: () {
                                // Navigate to the second page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Signup()),
                                );
                              },
                              child: const Text('Continue',
                                  style: TextStyle(color: Color(0xff0d0d0d))),
                            ),
                          ),
                        )
                      : Container(
                          margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
                          width: double.infinity,
                          child: SizedBox(
                            height: 57,
                            child: MaterialButton(

                              color: Color(0xfffdae07),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              onPressed: () {
                                // Navigate to the second page
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Signup()),
                                );
                              },
                              child: const Text('Get Started',
                                  style: TextStyle(color: Color(0xff0d0d0d))),
                            ),
                          ),
                        )),
            ],
          ),
        ),
      ],
    );
  }
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
