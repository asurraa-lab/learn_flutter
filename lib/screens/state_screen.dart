import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({Key? key}) : super(key: key);

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  int myPoint = 0;
  String myName = "";

  void changeMyPoint() {
    setState(() {
      myPoint = myPoint + 1;
    });
  }

  void settingTextName(String name) {
    setState(() {
      myName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Screen"),
      ),
      body: Container(
        child: Column(
          children: [
            Text(myName, style: TextStyle(fontSize: 100.0)),
            Text(
              "Title",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Center(
                child: GestureDetector(
              onTap: () => {changeMyPoint()},
              child: Text(
                "my point ${myPoint}",
              ),
            )),
            TextField(
              onChanged: (value) => {settingTextName(value)},
            )
          ],
        ),
      ),
    );
  }
}
