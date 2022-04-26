import 'package:flutter/material.dart';

import 'tests_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('RESULT'),
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
                  print('{message_back_to_test_succes}!');
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const TestsScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Log out'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
