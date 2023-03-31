import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center (
        child: ElevatedButton(
        onPressed: () =>  _showAlert(context),
        child: const Text('Toca para mostrar alerta'),
        ),
      ),
   
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.keyboard_return),
        onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
  void _showAlert (BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true, 
      builder: (context){
        return const AlertDialog(
          title: Text('Titulo'),
          content: Column(
            children: [
              Text('Este es el contenido de la alerta'),
              FlutterLogo(
                size: 50.0,
              ),
            ],
          ),
        );
      });
  }
}