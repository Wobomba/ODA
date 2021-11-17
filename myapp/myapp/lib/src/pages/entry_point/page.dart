import 'package:flutter/material.dart';

import 'package:myapp/auth/auth_state.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';

class PageEntryPoint extends StatefulWidget {
  const PageEntryPoint({
    Key? key,
  }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PageEntryPoint> {
  final datasets = <String, dynamic>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: SafeArea(
              left: false,
              top: true,
              right: false,
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 700,
                    child: TCard(
                      onForward: (index, info) {
                        if (info.direction == SwipDirection.Right) {
                          //like

                        } else {
                          //dislike

                        }
                      },
                      onEnd: () {},
                      lockYAxis: false,
                      slideSpeed: 20,
                      delaySlideFor: 500,
                      cards: [
                        Container(
                          margin: EdgeInsets.zero,
                          padding: EdgeInsets.zero,
                          width: double.maxFinite,
                          height: 500,
                          decoration: BoxDecoration(
                            color: const Color(0xFF000000),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24),
                            ),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                  bottomLeft: Radius.circular(24),
                                ),
                                child: Image.network(
                                  '''https://source.unsplash.com/random''',
                                  width: double.maxFinite,
                                  height: 700,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Opacity(
                                opacity: 0.3,
                                child: Container(
                                  margin: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  width: double.maxFinite,
                                  height: 700,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF000000),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24),
                                      bottomRight: Radius.circular(24),
                                      bottomLeft: Radius.circular(24),
                                    ),
                                  ),
                                  child: Text(
                                    '''''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 24,
                                      right: 24,
                                      bottom: 30,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '''Newton''',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: const Color(0xFFFFFFFF),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 22,
                                              fontStyle: FontStyle.normal,
                                              decoration: TextDecoration.none,
                                            ),
                                          ),
                                          textAlign: TextAlign.left,
                                          maxLines: 1,
                                        ),
                                        Container(
                                          margin: EdgeInsets.zero,
                                          padding: EdgeInsets.zero,
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(48),
                                              topRight: Radius.circular(48),
                                              bottomRight: Radius.circular(48),
                                              bottomLeft: Radius.circular(48),
                                            ),
                                          ),
                                          child: Icon(
                                            MdiIcons.fromString(
                                                '''information'''),
                                            size: 24,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ],
                                    ),
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
          ),
          // BottomBar
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.zero,
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 2,
                ),
                width: double.maxFinite,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        child: Column(
                      children: [
                        Icon(
                          MdiIcons.fromString('account'),
                          size: 32,
                          color: Color(0xFF848080),
                        ),
                        Text(
                          'Label',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    )),
                    GestureDetector(
                        child: Column(
                      children: [
                        Icon(
                          MdiIcons.fromString('archive-arrow-down'),
                          size: 32,
                          color: Color(0xFF848080),
                        ),
                        Text(
                          'Label',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    )),
                    GestureDetector(
                        child: Column(
                      children: [
                        Icon(
                          MdiIcons.fromString('cards-heart'),
                          size: 32,
                          color: Color(0xFF848080),
                        ),
                        Text(
                          'Label',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    )),
                    GestureDetector(
                        child: Column(
                      children: [
                        Icon(
                          MdiIcons.fromString('message'),
                          size: 32,
                          color: Color(0xFF848080),
                        ),
                        Text(
                          'Label',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
