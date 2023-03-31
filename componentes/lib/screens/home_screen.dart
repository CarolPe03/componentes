import 'package:componentes/screens/alerts.dart';
import 'package:componentes/utlis/set_icons_util.dart';
import 'package:flutter/material.dart';
import 'package:componentes/providers/menu_providers.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes 5B'),
      ),
      body: _lista(
       
      ),
    );
  }

  Widget _lista() {
   // print(menuProvider.options);
    // menuProvider.loadData().then(options){
    //   print(options);
    // });
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List <dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data as List<dynamic>,context),
        );
      }
    );

  }

  List<Widget> _listaItems(List <dynamic> data, BuildContext context) {
    // return const [
    //   ListTile(
    //     title: Text('Hola mundo'),
    //     subtitle: Text('Este es un subtitulo'),
    //     leading: Icon(Icons.accessibility),
    //     trailing: Icon(Icons.keyboard_arrow_right),
    //   ),
    //   ListTile(
    //     title: Text('Titulo'),
    //     subtitle: Text('Este es un subtitulo'),
    //     leading: Icon(Icons.accessibility),
    //     trailing: Icon(Icons.keyboard_arrow_right),
    //   ),
    // ];
    setIconsUtil iconsUtil = const setIconsUtil();
    final List <Widget> opciones = [];
    data.forEach((opt) {
      final item = ListTile(
        title: Text(opt['texto']),
        subtitle: Text(opt['texto2']),
        
        leading: iconsUtil.getIcon(opt['icon']),
        trailing: const Icon (Icons.keyboard_arrow_right),
        onTap: (){
          // final route = MaterialPageRoute(builder: (context){
          //     return AlertScreen();
          //   });
            Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones
      ..add(item)
      ..add(const Divider());
    });
    return opciones;
  }
}