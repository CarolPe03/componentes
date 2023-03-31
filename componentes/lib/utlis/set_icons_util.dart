import 'package:flutter/material.dart';


class setIconsUtil{
  const setIconsUtil();
  final _icons = const <String, IconData>{
    'add_alert' :  Icons.add_alert,
    'input': Icons.input,
    'camara' : Icons.camera_alt_outlined,
    'data': Icons.save
  };
 
 Icon getIcon (String iconName){
  return Icon(
    _icons [iconName],
    color: Colors.indigo,
  );
 }
}