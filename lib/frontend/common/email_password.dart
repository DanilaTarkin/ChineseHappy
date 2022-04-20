import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class EmailPassword extends StatelessWidget {
  EmailPassword({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black26,
        child: Column(
          children: [
            const Expanded(
                flex: 3,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nickname',
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white70,
                )),
            const Expanded(
                flex: 3,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
