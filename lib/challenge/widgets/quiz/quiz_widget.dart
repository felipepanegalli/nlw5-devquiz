import 'package:flutter/material.dart';

import 'package:nlw_5_dev_quiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:nlw_5_dev_quiz/core/core.dart';
import 'package:nlw_5_dev_quiz/shared/models/awnser_model.dart';
import 'package:nlw_5_dev_quiz/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onChange;

  QuizWidget({
    Key? key,
    required this.question,
    required this.onChange,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexselected = -1;
  AwnserModel awnser(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(widget.question.title, style: AppTextStyles.heading),
          SizedBox(height: 24),
          for (var i = 0; i < widget.question.awnsers.length; i++)
            AwnserWidget(
              awnser: awnser(i),
              isDisabled: indexselected != -1,
              isSelected: indexselected == i,
              onTap: () {
                indexselected = i;
                setState(() {});
                Future.delayed(Duration(seconds: 2))
                    .then((value) => widget.onChange());
              },
            ),
        ],
      ),
    );
  }
}
