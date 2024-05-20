import "package:flutter/material.dart";
import "package:quiz_app_mob/Components/QuestionAnswer.dart";

import "../Model/QA.dart";
import "Welcome.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late QA qa;

  @override
  void initState() {
    qa = QA(
        "this is placeholder for the question text in the question and option widget",
        ["option1", "option2", "option3", "option4"],
        true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          backgroundColor: Theme.of(context).colorScheme.background),
      body: const Center(
        // child: QuestionAnswer(
        //   qa: qa,
        // ),
        child: Welcome(),
      ),
    );
  }
}
