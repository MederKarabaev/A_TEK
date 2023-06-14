import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_text_styles.dart';
import 'package:my_prof/constants/app_texts.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 33.5,
              backgroundImage: AssetImage('assets/images/a_i.png'),
            ),
            Icon(Icons.photo_camera, size: 20),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        const Column(
          children: [
            Text(
              AppTexts.profilName,
              style: TextStyles.profilName,
            ),
            Text(
              '${AppTexts.country}, ${AppTexts.city}',
              style: TextStyles.location,
            ),
          ],
        ),
        const SizedBox(
          width: 55,
        ),
        Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            SizedBox(
                width: 46,
                height: 41,
                child: Image.asset('assets/images/Rect.png')),
            const Text(
              '9,7',
              style: TextStyles.whiteNum,
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
