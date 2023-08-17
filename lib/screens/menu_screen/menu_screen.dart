import 'package:flutter/material.dart';
import 'package:my_prof/components/app_scafforld.dart';
import 'package:my_prof/screens/menu_screen/components/faq_screen.dart';
import 'package:my_prof/screens/menu_screen/components/invite_friends_screen.dart';
import 'package:my_prof/screens/menu_screen/components/menu_container.dart';
import 'package:my_prof/screens/menu_screen/components/settings_screen/settings_screen.dart';
import 'package:my_prof/screens/menu_screen/components/teh_pod_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Меню',
      children: [
        MenuContainer(icons: Icons.add_card, title: 'Моя команда'),
        MenuContainer(icons: Icons.add_card, title: 'Персональные данные'),
        MenuContainer(icons: Icons.add_card, title: 'Статистика'),
        MenuContainer(icons: Icons.add_card, title: 'Сохранено'),
        MenuContainer(icons: Icons.add_card, title: 'Достижения'),
        MenuContainer(
          icons: Icons.add_card,
          title: 'Пригласить друзей',
          widget: InviteFriendsScreen(),
        ),
        MenuContainer(icons: Icons.add_card, title: 'Последние встречи'),
        MenuContainer(
          icons: Icons.add_card,
          title: 'Настройки',
          widget: SettingsScreen(),
        ),
        SizedBox(height: 20),
        MenuContainer(icons: null, title: 'Частные вопросы'),
        MenuContainer(icons: null, title: 'Как работает MiTTi'),
        MenuContainer(icons: null, title: 'Пользовательское соглашение'),
        MenuContainer(
          icons: null,
          title: 'Тех поддержка',
          widget: TehPodScreen(),
        ),
        MenuContainer(
          icons: null,
          title: 'FAQ',
          widget: FaqScreen(),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
