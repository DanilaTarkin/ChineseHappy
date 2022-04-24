import 'package:flutter/material.dart';

import 'login_screen_new.dart';

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
        title: const Text('ACCOUNT'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
      ),
      body: ListView(
        children: [
          Text('INFO'),
          Center(
            child: Container(
              color: Colors.grey,
              child: GestureDetector(
                onTap: () {
                  print('LOGOUT IS SUCCES!');
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const LoginScreenNew()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text('Log out'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
