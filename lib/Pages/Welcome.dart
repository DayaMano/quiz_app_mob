import "package:flutter/material.dart";

import "../utils/Constant.dart" as constant;

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 5.0),
          child: Text(constant.welcomeString,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37.0),),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30.0)),
            onPressed: () print("he"),
            child: const Text("Start")),
      ],
    );
  }
}
