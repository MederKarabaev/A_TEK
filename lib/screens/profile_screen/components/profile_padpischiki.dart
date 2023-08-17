import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_colors.dart';
import 'package:my_prof/constants/app_text_styles.dart';
import 'package:my_prof/constants/app_texts.dart';

class ProfilePadpischiki extends StatelessWidget {
  const ProfilePadpischiki({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Column(
          children: [
            Text('87', style: TextStyles.interesPost),
            Text(AppTexts.postov, style: TextStyles.ppd),
          ],
        ),
        Container(color: AppColors.black, width: 1, height: 43),
        const Column(
          children: [
            Text('870', style: TextStyles.interesPost),
            Text(AppTexts.podpischiki, style: TextStyles.ppd),
          ],
        ),
        Container(color: AppColors.black, width: 1, height: 43),
        const Column(
          children: [
            Text('350', style: TextStyles.interesPost),
            Text(AppTexts.druzya, style: TextStyles.ppd),
          ],
        ),
      ],
    );
  }
}
