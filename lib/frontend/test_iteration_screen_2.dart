import 'package:flutter/material.dart';

import 'tests_screen.dart';

class TestIterationScreen2 extends StatefulWidget {
  const TestIterationScreen2({Key? key}) : super(key: key);

  @override
  State<TestIterationScreen2> createState() => _TestIterationScreen2State();
}

class _TestIterationScreen2State extends State<TestIterationScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{test_iteration_screen_2_name}'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            print('{message_test_screen}');
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const TestsScreen()));
          },
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 4,
            child: Center(
              child: Text(
                '{content_qusetion}',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
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
                              print("{message_button_answer_true}");
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
                                  "{button_answer_true}",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              print("{message_button_answer_false}");
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
                                  "{button_answer_false}",
                                  style: TextStyle(
                                    fontSize: 18,
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
                              print("{message_button_answer_false}");
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
                                  "{button_answer_false}",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              print("{message_button_answer_false}");
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
                                  "{button_answer_false}",
                                  style: TextStyle(
                                    fontSize: 18,
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
