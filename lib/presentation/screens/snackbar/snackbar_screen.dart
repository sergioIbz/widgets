import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void snack(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('soy un snackbar externo'),
        duration: Duration(seconds: 4),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Titulo'),
        content: const Text('Cuerpo y contenido del dialogo'),
        actions: [

          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('cerrar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack bar'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => snack(context),
        label: const Text('Ver'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Datos licensias usadas'),
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),
            const SizedBox(height: 30),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
    );
  }
}
