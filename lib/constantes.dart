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

List<String> LANG = ["assets/flags/fr.jpg","assets/flags/gb.png"];

List<Map> menuFood = [
  {
    'id': 0,
    'title' : 'Légumes'
  },
  {
    'id': 1,
    'title' : 'Sauces'
  },
  {
    'id': 2,
    'title' : 'Mets'
  },
  {
    'id': 3,
    'title' : 'Braise'
  },
  {
    'id': 4,
    'title' : 'Compléments'
  },
  {
    'id': 5,
    'title' : 'Liqueurs'
  },
  {
    'id': 6,
    'title' : 'Vins'
  },
  {
    'id': 7,
    'title' : 'Jus'
  }
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

List<Map> touristique = [
  {
    "image": "assets/images/chutte.jpg",
    "lieu": "Bafoussam",
    "name":"Les chuttes de..."
  },
  {
    "image": "assets/images/monument.jpg",
    "lieu": "Yaoundé",
    "name":"Monument de la réunification"
  },
  {
    "image": "assets/images/ocean.jpg",
    "lieu": "Kribi",
    "name":"La plage kribienne"
  },
  {
    "image": "assets/images/pont.jpg",
    "lieu": "Batouri",
    "name":"Le pont antique"
  }
];

List<Map> sponsors = [
  {
    "image": "assets/images/camtel.jpg",
    "lieu": "Bafoussam"
  },
  {
    "image": "assets/images/total.jpg",
    "lieu": "Batouri"
  },
  {
    "image": "assets/images/guiness.png",
    "lieu": "Batouri"
  },
  {
    "image": "assets/images/nexttel.png",
    "lieu": "Batouri"
  },
  {
    "image": "assets/images/mtn.jpg",
    "lieu": "Yaoundé"
  },
  {
    "image": "assets/images/orange.png",
    "lieu": "Kribi"
  },
  {
    "image": "assets/images/brasserie.jpg",
    "lieu": "Batouri"
  },

  {
    "image": "assets/images/ucb.jpg",
    "lieu": "Batouri"
  },
  {
    "image": "assets/images/yup.png",
    "lieu": "Batouri"
  }
];

List<Map> hotels = [
  {
    "image": "assets/images/djeuga.jpg",
    "lieu": "Yaoundé",
    "name":"Djeuga Palace"
  },
  {
    "image": "assets/images/hilton.jpg",
    "lieu": "Yaoundé",
    "name":"Hilton"
  },
  {
    "image": "assets/images/falaise.jpg",
    "lieu": "Douala",
    "name":"Falaise Bonapriso"
  },
  {
    "image": "assets/images/akwa.jpg",
    "lieu": "Douala",
    "name":"Akwa Palace"
  },
  {
    "image": "assets/images/taz.jpg",
    "lieu": "Kribi",
    "name":"Résidence Taz"
  },
  {
    "image": "assets/images/gites.jpg",
    "lieu": "Kribi",
    "name":"Gites"
  },
  {
    "image": "assets/images/newton.jpg",
    "lieu": "Limbe",
    "name":"First International Inn Newton"
  }
];

List<Map> restau = [
  {
    "image": "assets/images/cosy.jpg",
    "lieu": "Yaoundé",
    "name":"Cosy Pool"
  },
  {
    "image": "assets/images/safoutier.jpg",
    "lieu": "Yaoundé",
    "name":"Le Safoutier"
  },
  {
    "image": "assets/images/kajazoma.jpg",
    "lieu": "Yaoundé",
    "name":"Kajazoma"
  },
  {
    "image": "assets/images/mediterrannee.jpg",
    "lieu": "Douala",
    "name":"Méditerranée"
  },
  {
    "image": "assets/images/fourchette.jpg",
    "lieu": "Douala",
    "name":"La Fourchette"
  },
  {
    "image": "assets/images/grilladin.jpg",
    "lieu": "Douala",
    "name":"Grilladin"
  },
  {
    "image": "assets/images/big-bite.jpg",
    "lieu": "Limbe",
    "name":"Big Bite"
  },
  {
    "image": "assets/images/arne.jpg",
    "lieu": "Limbe",
    "name":"ARNE's Cafe"
  }
];

List<Map> taxis = [
  {
    "image": "assets/images/taxi1.png",
    "lieu": "Yaoundé",
    "name":"Courses"
  },
  {
    "image": "assets/images/taxi2.jpg",
    "lieu": "Douala",
    "name":"Courses"
  },
  {
    "image": "assets/images/location1.jpg",
    "lieu": "Yaoundé",
    "name":"A Louer"
  },
  {
    "image": "assets/images/location2.jpg",
    "lieu": "Douala",
    "name":"A Louer"
  },
  {
    "image": "assets/images/location3.jpg",
    "lieu": "Limbé",
    "name":"A Louer"
  },
  {
    "image": "assets/images/moto1.jpg",
    "lieu": "Yaoundé",
    "name":"A Louer"
  },
  {
    "image": "assets/images/moto2.jpg",
    "lieu": "Douala",
    "name":"Courses"
  }
];

List<Map> legumes = [
  {
    "id": 0,
    "image": "assets/images/ndole.jpg",
    "prix": "2.500 F.CFA",
    "name":"Ndolè aux écrevisse",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 1,
    "image": "assets/images/eru.jpg",
    "prix": "2.500 F.CFA",
    "name":"Eru à la peau de boeuf",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 2,
    "image": "assets/images/okok.jpg",
    "prix": "2.500 F.CFA",
    "name":"Okok",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
];

List<Map> Sauces = [
  {
    "id": 0,
    "image": "assets/images/sauce-pistache.jpg",
    "prix": "3.500 F.CFA",
    "name":"Pistache au boeuf",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 1,
    "image": "assets/images/arrachide.jpg",
    "prix": "5.000 F.CFA",
    "name":"Arrachides au mouton",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 2,
    "image": "assets/images/gombo.jpg",
    "prix": "4.500 F.CFA",
    "name":"Gombo au porc",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
];

List<Map> Mets = [
  {
    "id": 0,
    "image": "assets/images/koki.jpg",
    "prix": "3.500 F.CFA",
    "name":"Koki",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 1,
    "image": "assets/images/pistache.jpg",
    "prix": "5.000 F.CFA",
    "name":"Pistache au mix de viande",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
];

List<Map> Complements = [
  {
    "id": 0,
    "image": "assets/images/manioc.jpg",
    "prix": "1.500 F.CFA",
    "name":"Manioc à la vapeur",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 1,
    "image": "assets/images/baton.jpg",
    "prix": "2.000 F.CFA",
    "name":"Baton de manioc",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 2,
    "image": "assets/images/macabo.jpg",
    "prix": "2.000 F.CFA",
    "name":"Macabo à la vapeur",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 3,
    "image": "assets/images/plantain-vapeur.jpg",
    "prix": "2.000 F.CFA",
    "name":"Plantain à la vapeur",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 4,
    "image": "assets/images/plantain-frit.jpg",
    "prix": "2.000 F.CFA",
    "name":"Plantain frit",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 5,
    "image": "assets/images/coucous-mais.jpg",
    "prix": "2.000 F.CFA",
    "name":"Couscous maïs",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
  {
    "id": 6,
    "image": "assets/images/coucous-manioc.jpg",
    "prix": "2.000 F.CFA",
    "name":"Couscous manioc",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  },
];

List<Map> Vins = [
  {
    "id": 0,
    "image": "assets/images/matango.jpg",
    "prix": "2.000 F.CFA/1.5L",
    "name":"Vin de palme",
    "latitude":"7.365302",
    "longitude":"12.343439",
    "description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
  }
];

