import 'package:flutter/material.dart';
class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const Center (
        child: Text ('Camara'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.keyboard_return),
        onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
}