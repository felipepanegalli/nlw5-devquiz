import 'package:flutter/material.dart';
import 'package:nlw_5_dev_quiz/core/core.dart';
import 'package:nlw_5_dev_quiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  QuestionIndicatorWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questão 04", style: AppTextStyles.body),
              Text("04 de 10", style: AppTextStyles.body),
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: .4)
        ],
      ),
    );
  }
}
