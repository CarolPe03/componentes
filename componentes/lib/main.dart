
import 'package:componentes/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/':(BuildContext context) => const  HomeScreen(),
        'alert' : (BuildContext context) => const  AlertScreen(),
        'entradas' : (BuildContext context) => const  InputScreen(),
        'camara' : (BuildContext context) => const  CameraScreen(),
        'firebase' : (BuildContext context) => const  FirebaseScreen(),
      },
      //Para guardar con rutas que no exiten en main.dart
      onGenerateRoute: (RouteSettings settings){
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => const AlertScreen());
      },
      );
  }
}
