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
    title: 'Buttons',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',

    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Cards',
    subTitle: 'Estilos de tarjetas',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress indcator',
    subTitle: 'General y controladors',
    link: '/progress',
    icon: Icons.cached_outlined,
  ),
  MenuItems(
    title: 'Snack bar',
    subTitle: 'Mostar stanack bar',
    link: '/snackbar',
    icon: Icons.remove_red_eye_outlined,
  ),
  MenuItems(
    title: 'Animated container',
    subTitle: 'Container animado',
    link: '/animated',
    icon: Icons.play_arrow_outlined,
  ),
  MenuItems(
    title: 'Ui',
    subTitle: 'Controles ui',
    link: '/ui-controls',
    icon: Icons.format_paint_outlined,
  ),
  MenuItems(
    title: 'Tuorial',
    subTitle: 'Pequeña introduccion a la app',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),
  MenuItems(
    title: 'Swiper',
    subTitle: 'Prueba carrusel img',
    link: '/swiper',
    icon: Icons.swap_horiz_outlined,
  ),
];