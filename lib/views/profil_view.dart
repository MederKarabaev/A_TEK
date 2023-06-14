import 'package:flutter/material.dart';
import 'package:my_prof/constants/app_colors.dart';
import 'package:my_prof/constants/app_lists.dart';
import 'package:my_prof/constants/app_text_styles.dart';
import 'package:my_prof/constants/app_texts.dart';
import 'package:my_prof/views/components/profil_bottom_menu.dart';
import 'package:my_prof/views/components/profile_avatar.dart';
import 'package:my_prof/views/components/profile_interesy.dart';
import 'package:my_prof/views/components/profile_padpischiki.dart';
import 'package:my_prof/views/components/profile_posts.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({super.key});

  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: const Text(
          AppTexts.title,
          style: TextStyles.profilName,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 29, right: 28),
        child: ListView(
          children: [
            const ProfileAvatar(),
            const SizedBox(
              height: 18,
            ),
            const ProfilePadpischiki(),
            const SizedBox(height: 12),
            const Text(AppTexts.yoursekf,
                style: TextStyles.yourself, textAlign: TextAlign.start),
            ProfileInteresy(interesyList: AppLists().interesyList),
            ProfilePosts(imagesPosts: AppLists().imagesPosts),
          ],
        ),
      ),
      bottomNavigationBar: const ProfileButtomMenu(),
    );
  }
}
