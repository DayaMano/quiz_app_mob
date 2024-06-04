class QA {
  final String _question;
  final List<String> _option;
  final bool _singleAns;

  QA(this._question, this._option, this._singleAns);

  bool get singleAns => _singleAns;

  List<String> get option => _option;

  String get question => _question;
}
