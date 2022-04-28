import 'package:flutter/material.dart';

import 'tests_screen.dart';
import 'account_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
          title: const Text('{main_screen_name}'),
          centerTitle: true,
          backgroundColor: Colors.black38,
          foregroundColor: Colors.white70,
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              print('{message_account_screen}');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const AccountScreen()));
            },
          )),
      body: ListView(
        children: [
          Row(children: [
            BlockComponent(index: 1, backgroundColor: Colors.black12),
            BlockComponent(index: 2, backgroundColor: Colors.black26),
          ]),
          Row(children: [
            BlockComponent(index: 3, backgroundColor: Colors.black38),
            BlockComponent(index: 4, backgroundColor: Colors.black45),
          ]),
        ],
      ),
    );
  }
}

class BlockComponent extends StatefulWidget {
  int index;
  Color backgroundColor;

  BlockComponent({
    Key? key,
    required this.index,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  State<BlockComponent> createState() =>
      _BlockComponentState(index: index, backgroundColor: backgroundColor);
}

class _BlockComponentState extends State<BlockComponent> {
  var index = 0;
  Color backgroundColor = Colors.black26;

  _BlockComponentState({required this.index, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () {
            print('{message_choose_theme_${index.toString()}}');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const TestsScreen()));
          },
          child: Container(
              color: backgroundColor,
              height: 100,
              child: Center(
                child: Text(
                  '{theme_${index.toString()}}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              )),
        ));
  }
}
