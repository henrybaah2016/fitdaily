import 'package:fitdaily/src/app/calorie/burn.dart';
import 'package:flexivideoplayer/flexivideoplayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class FlexiDemo extends StatefulWidget {
  FlexiDemo({
    Key? key,

    this.title = 'Flexi Video Player Demo',

  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _FlexiDemoState(

    );
  }
}

class _FlexiDemoState extends State<FlexiDemo> {
  late VideoPlayerController _videoPlayerController1;
  FlexiController? _FlexiController;
  bool isSourceError = false;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _FlexiController?.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    setState(() {
      isSourceError = false;
    });
    try {
      _videoPlayerController1 = VideoPlayerController.network(
          "https://www.youtube.com/watch?v=1BZM2Vre5oc");

      await _videoPlayerController1.initialize();

      final subtitles = [
        Subtitle(
          index: 0,
          start: const Duration(seconds: 0),
          end: Duration(
              seconds: _videoPlayerController1.value.duration.inSeconds),
          text: '',
        ),
      ];

      _FlexiController = FlexiController(
        aspectRatio: 16 / 9,
        deviceOrientationsOnEnterFullScreen: [
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight
        ],
        deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
        allowFullScreen: true,
        fullScreenByDefault: true,
        allowedScreenSleep: false,
        videoPlayerController: _videoPlayerController1,
        autoPlay: true,
        looping: true,
        errorBuilder: (context, errorMessage) {
          print("Error find : $errorMessage");

          return Center(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
        additionalOptions: (context) {
          return <OptionItem>[
            OptionItem(
              onTap: toggleVideo,
              iconData: Icons.live_tv_sharp,
              title: 'Toggle Video Src',
            ),
          ];
        },
        subtitle: Subtitles(subtitles),
        subtitleBuilder: (context, dynamic subtitle) => Container(
          padding: const EdgeInsets.all(10.0),
          child: subtitle is InlineSpan
              ? RichText(
                  text: subtitle,
                )
              : Text(
                  subtitle.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
        ),

        hideControlsTimer: const Duration(seconds: 3),

        // Try playing around with some of these other options:
        isBrignessOptionDisplay: true,
        isVolumnOptionDisplay: true,

        cupertinoProgressColors: FlexiProgressColors(
          playedColor: Color(0xfffdae07),
          handleColor: Color(0xfffdae07),
          backgroundColor: Colors.grey,
          bufferedColor: Colors.white.withOpacity(0.5),
        ),
      );

      setState(() {});
    } catch (exception) {
      setState(() {
        isSourceError = true;
      });
      print("exception : $exception");
    }
  }

  Future<void> toggleVideo() async {
    await initializePlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: widget.title,
      home: Scaffold(
          backgroundColor: Color(0xff0d0d0d),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.black,
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: isSourceError
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Icon(
                                  CupertinoIcons.exclamationmark_circle,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'This video is unavailable',
                                  style: GoogleFonts.montserrat(
                                  height: 1.2,
                                  textStyle: const TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                ),
                                InkWell(
                                  onTap: () {
                                    initializePlayer();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 100,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Reload again",
                                      style: GoogleFonts.montserrat(
                                        height: 1.2,
                                        textStyle: const TextStyle(
                                          color: Color(0xfffdae07),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ])
                        : _FlexiController != null
                            ?
                            // &&
                            //        _FlexiController!
                            //            .videoPlayerController.value.isInitialized
                            //        ?
                            Flexi(
                                controller: _FlexiController!,
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                    CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Color(0xfffdae07),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Loading',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ]),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 30, left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                "Jumping",
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
                                    margin: const EdgeInsets.only(
                                        top: 6, right: 15),
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
                                          "23kcal",
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
                                          "3 min",
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text(
                                "Next",
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
                        margin:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 10),
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
                                      "2. Lifting Exercise",
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 6, right: 15),
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
                                          margin: const EdgeInsets.only(top: 6),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text(
                                "Next Episodes",
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
                            margin:
                                EdgeInsets.only(left: 10, top: 10, right: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 10, bottom: 0),
                              child: Text(
                                "3-10",
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Burn()),
                          );
                        },
                        child: Container(
                          margin:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10, top: 10, bottom: 10),
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
                                        "3. Running",
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
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 6, right: 15),
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
                                            margin: const EdgeInsets.only(top: 6),
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
                      ),


                      Container(
                        margin:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
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
                                margin: EdgeInsets.only(
                                    left: 10, right: 10, top: 10, bottom: 10),
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
                                      "3. Running",
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
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              top: 6, right: 15),
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
                                          margin: const EdgeInsets.only(top: 6),
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
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
