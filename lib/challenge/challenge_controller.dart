//CurrentPage

import 'package:flutter/material.dart';

class ChallengeController {
  // Gerenciamento de Value
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;
  // Gerenciamento de Value

  int qtdAnwserRight = 0;
}
