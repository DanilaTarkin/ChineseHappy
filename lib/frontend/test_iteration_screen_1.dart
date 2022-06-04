import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'result_screen.dart';
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
        title: Text(AppLocalizations.of(context)!.test_iteration_screen_1_name),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            print('{message_test_screen}');
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
                                child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.button_clear,
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
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ResultScreen()),
                                (Route<dynamic> route) => false,
                              );
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
                                child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.button_skip,
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
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const ResultScreen()),
                                (Route<dynamic> route) => false,
                              );
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
                                child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.button_accepted,
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
