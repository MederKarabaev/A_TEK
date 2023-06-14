import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_text_styles.dart';
import 'package:my_prof/constants/app_texts.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({
    super.key,
    required this.imagesPosts,
  });

  final List<String> imagesPosts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppTexts.posts,
          style: TextStyles.interesPost,
        ),
        const SizedBox(height: 10),
        Wrap(
          spacing: 24.0,
          runSpacing: 10.0,
          children: imagesPosts
              .map(
                (e) => Container(
                  width: 99,
                  height: 99,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    e,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
