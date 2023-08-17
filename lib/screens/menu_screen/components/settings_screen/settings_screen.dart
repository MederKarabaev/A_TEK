import 'package:flutter/material.dart';
import 'package:my_prof/components/app_scafforld.dart';
import 'package:my_prof/screens/menu_screen/components/menu_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(title: 'Настройки', children: [
      MenuContainer(
        title: 'Настройка профиля',
      ),
      MenuContainer(
        title: 'Языки',
        widget: LanguegeSettingScreen(),
      ),
      MenuContainer(
        title: 'Уведомления',
      ),
      MenuContainer(
        title: 'Настройки приватности',
      ),
      MenuContainer(
        title: 'Выйти',
      ),
    ]);
  }
}

class LanguegeSettingScreen extends StatefulWidget {
  const LanguegeSettingScreen({super.key});

  @override
  State<LanguegeSettingScreen> createState() => _LanguegeSettingScreenState();
}

class _LanguegeSettingScreenState extends State<LanguegeSettingScreen> {
  String? rr = 'Russian';
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Языки',
      children: [
        RadioLanguegeSettingButton(
          title: 'Russian',
          widget: Radio<String>(
            activeColor: Colors.amber,
            value: 'Russian',
            groupValue: rr,
            onChanged: (change) {
              setState(() {
                rr = change;
              });
            },
          ),
        ),
        RadioLanguegeSettingButton(
          title: 'English',
          widget: Radio<String>(
            activeColor: Colors.amber,
            value: 'English',
            groupValue: rr,
            onChanged: (change) {
              setState(() {
                rr = change;
              });
            },
          ),
        ),
      ],
    );
  }
}

class RadioLanguegeSettingButton extends StatelessWidget {
  const RadioLanguegeSettingButton(
      {super.key, this.title, this.ontap, required this.widget});
  final String? title;
  final VoidCallback? ontap;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title!),
            widget,
          ],
        ),
      ),
    );
  }
}
