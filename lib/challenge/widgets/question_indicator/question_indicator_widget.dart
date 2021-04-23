import 'package:flutter/material.dart';

import 'package:nlw_5_dev_quiz/core/core.dart';
import 'package:nlw_5_dev_quiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int length;
  QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.length,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questão ", style: AppTextStyles.body),
              Text("${currentPage.toString()} de ${length.toString()}",
                  style: AppTextStyles.body),
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: currentPage / length)
        ],
      ),
    );
  }
}
