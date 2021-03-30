import 'package:flutter/material.dart';

//COLORS
final Color BLANC = Colors.white;
final Color BG = Colors.grey[100];
final Color VERT = Colors.green[900];

//SIZE TEXT
final double SPLASH_TEXT = 50.0;

//SIZE VIEWS AND SPACES
final double HOME_HEAD = 250.0;
final double PADDING = 20.0;


Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> drawerItems=[
  {
    'icon': Icons.home,
    'title' : 'Accueil'
  },
  {
    'icon': Icons.update,
    'title' : 'CAN'
  },
  {
    'icon': Icons.do_not_disturb_alt,
    'title' : 'FAN ZONE'
  },
  {
    'icon': Icons.thumb_up,
    'title' : 'Nos sponsors'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Sites tourristiques'
  },
  {
    'icon': Icons.account_balance,
    'title' : 'Hotels'
  },
  {
    'icon': Icons.fastfood,
    'title' : 'Snacks & Restaurants'
  },
  {
    'icon': Icons.directions_car,
    'title' : 'Trouver un taxi'
  },
];