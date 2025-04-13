import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _selectedAnswer = [];
  List<String> get selectedAnswer => _selectedAnswer;
  set selectedAnswer(List<String> value) {
    _selectedAnswer = value;
  }

  void addToSelectedAnswer(String value) {
    selectedAnswer.add(value);
  }

  void removeFromSelectedAnswer(String value) {
    selectedAnswer.remove(value);
  }

  void removeAtIndexFromSelectedAnswer(int index) {
    selectedAnswer.removeAt(index);
  }

  void updateSelectedAnswerAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedAnswer[index] = updateFn(_selectedAnswer[index]);
  }

  void insertAtIndexInSelectedAnswer(int index, String value) {
    selectedAnswer.insert(index, value);
  }

  int _score = 0;
  int get score => _score;
  set score(int value) {
    _score = value;
  }
}
