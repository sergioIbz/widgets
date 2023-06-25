import 'package:flutter/material.dart';
import 'package:widgets/presentation/screens/screens.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const listMenuItemes = <MenuItems>[
  MenuItems(
    title: 'buttons',
    subTitle: 'subtitle',
    link: ButtonsScreen.name,

    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'cards',
    subTitle: 'subtitle',
    link: CardsScreen.name,
    icon: Icons.credit_card,
  ),
];