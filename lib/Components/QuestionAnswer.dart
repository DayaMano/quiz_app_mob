import "package:flutter/material.dart";

import "../Model/QA.dart";

class QuestionAnswer extends StatefulWidget {
  const QuestionAnswer({super.key, required this.qa});

  final QA qa;
  @override
  State<QuestionAnswer> createState() => _QAState();
}

class _QAState extends State<QuestionAnswer> {
  String _selectedOption = "";

  /// this is padding for the option widget
  EdgeInsets rightPaddingForOption = const EdgeInsets.only(right: 20.0);

  /// return question Text
  /// ### Parameter
  /// QA qa
  String getQuestion(QA qa) => qa != null ? qa.question : "";

  /// this function is called on selecting the option radio button
  void onSelectingTheOption(String? option) {
    setState(() {
      _selectedOption = option!;
    });
  }

  /// This function returns a list of RadioListTile widgets
  /// which is options below the question widget
  ///
  /// ### Parameter
  /// List<String> options,
  /// String _selectedOption
  ///
  /// ### Returns
  /// [List<RadioListTile>]
  List<RadioListTile> getOptionTiles(List<String> options, String groupValue) {
    List<RadioListTile> optionsList = [];
    for (var option in options) {
      RadioListTile optionItem = RadioListTile<String>(
        title: Text(
          option,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),
        ),
        value: option,
        groupValue: groupValue,
        onChanged: onSelectingTheOption,
        contentPadding: rightPaddingForOption,
        selected: false,
      );
      optionsList.add(optionItem);
    }
    return optionsList;
  }

  @override
  Widget build(BuildContext context) {
    var qa = widget.qa;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          getQuestion(qa),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
          softWrap: true,
        ),
        ...getOptionTiles(qa.option, _selectedOption),
      ],
    );
  }
}
