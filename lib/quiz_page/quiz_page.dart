import "package:flutter/material.dart";
import "package:quiz_app_mob/home/home_page.dart";
import "package:quiz_app_mob/shared/constant.dart" as constant;

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 5.0),
          child: Text(
            constant.welcomeString,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37.0),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 30.0),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const HomePage(title: constant.welcomeString),
              ),
            );
          },
          child: const Text(constant.start),
        ),
      ],
    );
  }
}
