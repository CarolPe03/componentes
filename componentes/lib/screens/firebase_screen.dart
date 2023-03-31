import 'package:flutter/material.dart';
class FirebaseScreen extends StatelessWidget {
  const FirebaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const Center (
        child: Text ('Firebase'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.keyboard_return),
        onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
}