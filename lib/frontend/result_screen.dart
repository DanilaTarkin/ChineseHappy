import 'package:flutter/material.dart';

import 'tests_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('{result_screen_name}'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
      ),
      body: ListView(
        children: [
          const Text('{back_result_to_response}'),
          Center(
            child: Container(
              color: Colors.grey,
              child: GestureDetector(
                onTap: () {
                  print('{message_button_next_theme}');
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const TestsScreen()),
                  );
                },
                child: const Text('{button_next}'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
