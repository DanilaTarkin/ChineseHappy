import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:happychinese/presentation/question_screen.dart';
import 'package:adobe_xd/page_link.dart';

class List_ extends StatelessWidget {
  List_({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: SizedBox(
            width: 280.0,
            height: 1465.0,
            child: SingleChildScrollView(
              primary: false,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}, {}, {}, {}, {}].map((itemData) {
                  return SizedBox(
                    width: 280.0,
                    height: 344.0,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment(-0.025, -1.0),
                          child: SizedBox(
                            width: 81.0,
                            height: 98.0,
                            child:
                                // Adobe XD layer: 'Lesson' (component)
                                PageLink(
                              links: [
                                PageLinkInfo(
                                  transition: LinkTransition.SlideUp,
                                  ease: Curves.easeOut,
                                  duration: 0.3,
                                  pageBuilder: () => QuestionScreen(),
                                ),
                              ],
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 17.0),
                                    child:
                                        // Adobe XD layer: 'IconLesson' (component)
                                        Stack(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xfffce572),
                                            borderRadius: BorderRadius.all(
                                                Radius.elliptical(
                                                    9999.0, 9999.0)),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0xfffce572)),
                                          ),
                                        ),
                                        Pinned.fromPins(
                                          Pin(start: 12.0, end: 11.0),
                                          Pin(size: 58.0, end: 10.0),
                                          child:
                                              // Adobe XD layer: 'Icon' (shape)
                                              Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: const AssetImage(''),
                                                fit: BoxFit.cover,
                                              ),
                                              border: Border.all(
                                                  width: 1.0,
                                                  color:
                                                      const Color(0x00000000)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 8.0, end: 7.0),
                                    Pin(size: 19.0, end: 0.0),
                                    child: Text(
                                      'Основы 1',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 14,
                                        color: const Color(0xffe9d4a5),
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                      softWrap: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.025, 0.0),
                          child: SizedBox(
                            width: 81.0,
                            height: 98.0,
                            child:
                                // Adobe XD layer: 'Lesson' (component)
                                Stack(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 17.0),
                                  child:
                                      // Adobe XD layer: 'IconLesson' (component)
                                      Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xfffce572),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xfffce572)),
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(start: 12.0, end: 11.0),
                                        Pin(size: 58.0, end: 10.0),
                                        child:
                                            // Adobe XD layer: 'Icon' (shape)
                                            Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: const AssetImage(''),
                                              fit: BoxFit.cover,
                                            ),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0x00000000)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 8.0, end: 7.0),
                                  Pin(size: 19.0, end: 0.0),
                                  child: Text(
                                    'Основы 1',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 14,
                                      color: const Color(0xffe9d4a5),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                            width: 81.0,
                            height: 98.0,
                            child:
                                // Adobe XD layer: 'Lesson' (component)
                                Stack(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 17.0),
                                  child:
                                      // Adobe XD layer: 'IconLesson' (component)
                                      Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xfffce572),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xfffce572)),
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(start: 12.0, end: 11.0),
                                        Pin(size: 58.0, end: 10.0),
                                        child:
                                            // Adobe XD layer: 'Icon' (shape)
                                            Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: const AssetImage(''),
                                              fit: BoxFit.cover,
                                            ),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0x00000000)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 8.0, end: 7.0),
                                  Pin(size: 19.0, end: 0.0),
                                  child: Text(
                                    'Основы 1',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 14,
                                      color: const Color(0xffe9d4a5),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 81.0,
                            height: 98.0,
                            child:
                                // Adobe XD layer: 'Lesson' (component)
                                Stack(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 17.0),
                                  child:
                                      // Adobe XD layer: 'IconLesson' (component)
                                      Stack(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xfffce572),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                          border: Border.all(
                                              width: 1.0,
                                              color: const Color(0xfffce572)),
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(start: 12.0, end: 11.0),
                                        Pin(size: 58.0, end: 10.0),
                                        child:
                                            // Adobe XD layer: 'Icon' (shape)
                                            Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: const AssetImage(''),
                                              fit: BoxFit.cover,
                                            ),
                                            border: Border.all(
                                                width: 1.0,
                                                color: const Color(0x00000000)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(start: 8.0, end: 7.0),
                                  Pin(size: 19.0, end: 0.0),
                                  child: Text(
                                    'Основы 1',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 14,
                                      color: const Color(0xffe9d4a5),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                    softWrap: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
