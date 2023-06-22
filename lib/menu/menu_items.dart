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
    title: 'title',
    subTitle: 'subtitle',
    link: '/',
    icon: Icons.abc,
  ),
  MenuItems(
    title: 'title2',
    subTitle: 'subtitle',
    link: '/',
    icon: Icons.ac_unit_outlined,
  ),
];