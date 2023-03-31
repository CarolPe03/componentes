import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  //Variables que guardan lo que el usuario escriba en los TextFields
  String userName='';
  String password = '';
  String email='';
  String date ='';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text ('Entradas de datos'),
      ),
      body: ListView (
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0),
          children: [
            _entradaUserName(),
            const Divider(),
             _entradaPassword(),
            const Divider(),
          ],
      ),
    );
  }

  Widget _entradaUserName(){
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'User name: ',
        hintText: 'Escribe aqui tu nombre de usuario',
      //  icon: const Icon(Icons.person),
        // helperText: 'Escribe tu nombre con minusculas',
        prefix: const Icon (Icons.person),
        suffixIcon: const Icon (Icons.edit),
        suffixIconColor: Color.fromARGB(255, 194, 11, 60),       
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
      color: Color.fromARGB(255, 8, 36, 111),
      fontWeight: FontWeight.bold),
      cursorColor: Colors.blueAccent,
      cursorRadius: const Radius.circular(16.0),
      cursorWidth: 16.0,
      // maxLines: 3, max lineas en interfaz
      onChanged: (value){
        userName = value;
        print(userName);
      },
      //Otros eventos del TextField
      // onSubmitted: ,
      // onEditingComplete: ,
    );

  }
   Widget _entradaPassword(){
    return TextField(
   
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: 'Password: ',
        hintText: 'Escribe aqui tu contraseña',
      //  icon: const Icon(Icons.person),
        // helperText: 'Escribe tu nombre con minusculas',
        prefix: const Icon (Icons.person),
        suffixIcon: const Icon (Icons.edit),
        suffixIconColor: Color.fromARGB(255, 194, 11, 60),    
        counter: Text('Caracteres: ${password.length}'),   
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
      color: Color.fromARGB(255, 79, 5, 5),
      fontWeight: FontWeight.bold),
      cursorColor: Color.fromARGB(255, 0, 0, 0),
      cursorRadius: const Radius.circular(16.0),
      obscureText: true,
      maxLength: 8,
      keyboardType: TextInputType.number,
      
      cursorWidth: 16.0,
      // maxLines: 3, max lineas en interfaz
      onChanged: (value){
        password = value;
        print(password);
      },
      //Otros eventos del TextField
      // onSubmitted: ,
      // onEditingComplete: ,
    );

  }
}