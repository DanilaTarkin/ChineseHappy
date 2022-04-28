import 'package:flutter/material.dart';

import 'login_screen.dart';

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
        title: const Text('{account_screen_name}'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
      ),
      body: ListView(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.green,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.yellow,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Name Profile',
                        style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text('Email Profile',
                        style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            color: Colors.red,
            child: Row(
              children: [
              Container(
                color: Colors.blue,
                child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: const Text(
                          '3',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: const Text(
                          'Всего',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '3',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        const Text(
                          'В этом' + '\n' + 'месяце',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '3',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        const Text(
                          'В прошлом' + '\n' + 'месяце',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ]),
                ),
              ),
            ]),
          ),
          Center(
              child:
               TextButton(
                    onPressed: () {
                      print('{message_registration_screen}');
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreenNew(),
                        ),
                      );
                    },
                    child: const Text('Logout'),
                  ),
          ),
        ],
      ),
    );
  }
}
