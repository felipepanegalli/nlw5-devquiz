import 'package:flutter/material.dart';
import 'package:nlw_5_dev_quiz/core/core.dart';
import 'package:nlw_5_dev_quiz/home/widgets/chart/chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: .1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: ChartWidget(),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vamos começar?",
                      style: AppTextStyles.heading,
                    ),
                    Text(
                      "Complete os desafios e avance em conhecimento",
                      style: AppTextStyles.body,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
