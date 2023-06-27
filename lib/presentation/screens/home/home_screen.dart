import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listMenuItemes.length,
      itemBuilder: (context, index) => _CustomListTitle(index: index),
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  final int index;
  const _CustomListTitle({required this.index});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(listMenuItemes[index].title),
      subtitle: Text(listMenuItemes[index].subTitle),
      leading: Icon(
        listMenuItemes[index].icon,
        color: theme.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: theme.primary,
      ),
      onTap: ()=>{
      context.push(listMenuItemes[index].link)
      },
    );
  }
}
