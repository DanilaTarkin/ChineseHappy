import 'package:flutter/material.dart';
import 'package:happychinese/frontend/quiz_screen.dart';
import 'package:happychinese/frontend/tests_screen.dart';

import 'account_screen.dart';

class TestIterationScreen1 extends StatefulWidget {
  const TestIterationScreen1({Key? key}) : super(key: key);

  @override
  State<TestIterationScreen1> createState() => _TestIterationScreen1State();
}

class _TestIterationScreen1State extends State<TestIterationScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ITERATION 1 TYPE'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const TestsScreen()));
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              // child: Container(
              //   child: Text(
              //     'QUESTION',
              //     style: const TextStyle(
              //       fontSize: 20,
              //     ),
              //   ),
              // ),
              child: QuazComponent(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black38,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              print("ANSWERING RIGHT! [0]");
                            },
                            child: Container(
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white24,
                                          Colors.white10
                                        ])),
                                child: const Center(
                                    child: Text(
                                  "[TRUE ANSWER]",
                                  style: TextStyle(
                                    fontSize: 26,
                                  ),
                                ))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              print("ANSWERING WRONG! [1]");
                            },
                            child: Container(
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white10,
                                          Colors.white24
                                        ])),
                                child: const Center(
                                    child: Text(
                                  "[FALSE 1]",
                                  style: TextStyle(
                                    fontSize: 26,
                                  ),
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              print("ANSWERING WRONG! [2]");
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white24,
                                          Colors.white10
                                        ])),
                                margin: const EdgeInsets.all(5),
                                child: const Center(
                                    child: Text(
                                  "[FALSE 2]",
                                  style: TextStyle(
                                    fontSize: 26,
                                  ),
                                ))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              print("ANSWERING WRONG! [3]");
                            },
                            child: Container(
                                margin: const EdgeInsets.all(5),
                                //color: colorsButton[3],
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white10,
                                          Colors.white24
                                        ])),
                                child: const Center(
                                    child: Text(
                                  "[FALSE 3]",
                                  style: TextStyle(
                                    fontSize: 26,
                                  ),
                                ))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
