import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'ButtonsScreen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated '),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.cabin),
              label: const Text('Elevated icon'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.alarm),
              label: const Text('Filled icon'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.radar_outlined),
              label: const Text('Outline icone'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.telegram),
              label: const Text('Text icon'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.whatshot),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.where_to_vote),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  colorTheme.primary,
                ),
                iconColor: const MaterialStatePropertyAll(
                  Colors.white,
                ),
              ),
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colorTheme.primary,
        child: InkWell(
          onTap: (){},
          splashColor: colorTheme.secondary,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Custom button',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
