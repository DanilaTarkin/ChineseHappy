import 'package:flutter/material.dart';

import 'quiz_screen.dart';
import 'tests_screen.dart';

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
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const TestsScreen()));
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Center(
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
                              print("{message_button_clear}");
                            },
                            child: Container(
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white24,
                                          Colors.white10
                                        ])),
                                child: const Center(
                                    child: Text(
                                  "{button_clear}",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              print("{message_button_skip}");
                            },
                            child: Container(
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white10,
                                          Colors.white24
                                        ])),
                                child: const Center(
                                    child: Text(
                                  "{button_skip}",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              print("{message_button_accepted}");
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black38),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white24,
                                          Colors.white10
                                        ])),
                                margin: const EdgeInsets.all(5),
                                child: const Center(
                                    child: Text(
                                  "{button_accepted}",
                                  style: TextStyle(
                                    fontSize: 14,
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
