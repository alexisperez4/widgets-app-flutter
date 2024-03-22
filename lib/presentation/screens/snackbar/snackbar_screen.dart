import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});



  void showCustomSnackbar(BuildContext context) {
    
    final snackback = SnackBar(
      content: const Text('hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){},),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }


  void openDialog( BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Ex consectetur consequat magna deserunt cillum sunt. Laborum est minim excepteur quis esse adipisicing ut. Labore et enim sunt non qui aute incididunt irure. Lorem mollit ipsum est duis incididunt ullamco et ut incididunt sit commodo occaecat. Commodo sit fugiat dolor adipisicing cillum anim quis ipsum quis elit consequat.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          TextButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ), 
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sanckbars y Dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: () {
              showAboutDialog(
                context: context,
                children: [
                  const Text('Ex laborum quis cillum cupidatat aute tempor mollit exercitation pariatur proident adipisicing. Ex excepteur culpa cillum tempor. Duis et esse anim aliquip non cupidatat anim id amet in sit deserunt tempor labore. Commodo non ullamco pariatur voluptate exercitation velit enim proident voluptate.')
                ]
              );
            }, 
            child: const Text('Licencias usadas')),
          
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar dialogo')
            ),
          
          
          ],
        ),
      ),



      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon( Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),

    );
  }
}