import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class StepProgressIndicator extends StatelessWidget {
  final int numberOfSteps;
  final int currentStep;
  final List<String> stepNames;

  const StepProgressIndicator({
    super.key,
    required this.numberOfSteps,
    required this.currentStep,
    required this.stepNames,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: List.generate(numberOfSteps - 1, (index) {
                    return Expanded(
                      child: Container(
                        height: 2,
                        color:
                            index < currentStep - 1
                                ? OColor.green600
                                : OColor.gray200,
                      ),
                    );
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(numberOfSteps, (index) {
                    bool isCompleted = index < currentStep - 1;
                    bool isCurrent = index == currentStep - 1;

                    Color circleColor =
                        isCompleted || isCurrent
                            ? OColor.green600
                            : OColor.gray200;

                    Widget content =
                        isCompleted
                            ? const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            )
                            : Text(
                              '${index + 1}',
                              style: OTextStyle.labelMedium.copyWith(
                                color:
                                    isCurrent ? Colors.white : OColor.gray800,
                                fontSize: 16,
                              ),
                            );

                    return Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: circleColor,
                        shape: BoxShape.circle,
                      ),
                      child: Center(child: content),
                    );
                  }),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(numberOfSteps, (index) {
              return SizedBox(
                width: 56,
                child: Text(
                  stepNames[index],
                  textAlign: TextAlign.center,
                  style: OTextStyle.labelXSmall,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
