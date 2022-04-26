import 'package:flutter/material.dart';

import 'test_iteration_screen_1.dart';
import 'test_iteration_screen_2.dart';

class TestsScreen extends StatefulWidget {
  const TestsScreen({Key? key}) : super(key: key);

  @override
  State<TestsScreen> createState() => _TestsScreenState();
}

class _TestsScreenState extends State<TestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('{tests_screen_name}'),
        centerTitle: true,
        backgroundColor: Colors.black38,
        foregroundColor: Colors.white70,
      ),
      body: ListView(children: [
        BlockComponent(index: 1, backgroundColor: Colors.black12),
        BlockComponent(index: 2, backgroundColor: Colors.black26),
        BlockComponent(index: 3, backgroundColor: Colors.black12),
        BlockComponent(index: 4, backgroundColor: Colors.black26),
        BlockComponent(index: 5, backgroundColor: Colors.black12),
        BlockComponent(index: 6, backgroundColor: Colors.black26),
        BlockComponent(index: 4, backgroundColor: Colors.black26),
        BlockComponent(index: 5, backgroundColor: Colors.black12),
        BlockComponent(index: 6, backgroundColor: Colors.black26),
      ]),
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
    return GestureDetector(
      onTap: () {
        print('clicked ' + index.toString());
        // пока через if, пока нет бэка
        if (index == 1) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const TestIterationScreen1()));
        } else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const TestIterationScreen2()));
        }
      },
      child: Container(
          color: backgroundColor,
          height: 100,
          child: Center(
            child: Text(
              'level ' + index.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          )),
    );
  }
}
