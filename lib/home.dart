import 'package:flutter/material.dart';
import 'package:soccer/drawer.dart';
import 'package:soccer/home_widgets.dart';

import 'constantes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      appBar: AppBar(
        backgroundColor: VERT,
        elevation: 0.0,
        title: Text("Accueil", style: TextStyle(
          color: BLANC,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: HOME_HEAD,
              color: VERT,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: PADDING/2),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green[600],
                      borderRadius: BorderRadius.all(Radius.circular(PADDING/2))
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: PADDING/2, bottom: PADDING/2, left: PADDING, right: PADDING),
                      child: Text("DEMI FINALE", style: TextStyle(
                        color: BLANC,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: PADDING, right: PADDING, top: PADDING),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/flags/cameroun.png"),
                                fit: BoxFit.cover
                              ),
                              shape: BoxShape.circle
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: PADDING/2),
                            child: Text("Cameroun", style: TextStyle(
                              color: BLANC,
                              fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: PADDING * 1.5),
                        child: Text("2 : 0", style: TextStyle(
                          color: BLANC,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/flags/cote-ivoire.gif"),
                                    fit: BoxFit.cover
                                ),
                                shape: BoxShape.circle
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: PADDING/2),
                            child: Text("Côte d'ivoire", style: TextStyle(
                                color: BLANC,
                                fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: HOME_HEAD - 30),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: BG,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: HOME_HEAD - 10, left: PADDING, right: PADDING),
              child: Column(
                children: [
                  menuTitle("Nos sponsors", VERT),
                  SizedBox(height: PADDING/4,),
                  menuList(9),
                  SizedBox(height: PADDING/2,),
                  menuTitle("Sites tourristiques", Colors.pink),
                  SizedBox(height: PADDING/4,),
                  menuList(5),
                  SizedBox(height: PADDING/2,),
                  menuTitle("Trouver un hotel", Colors.brown),
                  SizedBox(height: PADDING/4,),
                  menuList(7),
                  SizedBox(height: PADDING/2,),
                  menuTitle("Snacks & Restaurants", Colors.deepOrange),
                  SizedBox(height: PADDING/4,),
                  menuList(4),
                  SizedBox(height: PADDING/2,),
                  menuTitle("Louer un taxi", Colors.blue),
                  SizedBox(height: PADDING/4,),
                  menuList(9),
                  SizedBox(height: PADDING/2,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}