import 'package:flutter/material.dart';

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
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'cards',
    subTitle: 'subtitle',
    link: '/cards',
    icon: Icons.credit_card,
  ),
];