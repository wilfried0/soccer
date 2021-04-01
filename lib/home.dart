import 'package:flutter/material.dart';
import 'package:soccer/drawer.dart';
import 'package:soccer/home_widgets.dart';
import 'constantes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String lang = "assets/flags/fr.jpg";
  int langue = 0;
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: PADDING),
            child: DropdownButton(
              underline: Container(),
              icon: Container(),
              value: lang,
              items: LANG.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(PADDING * 2)),
                        image: DecorationImage(
                          image: AssetImage("$e")
                        ),
                        //shape: BoxShape.circle
                      ),
                      height: 35,
                      width: 35,
                      //child: Image.asset("$e"),
                    ),
                  )
                );
              }).toList(),
              onChanged: (value){
                setState(() {
                  lang = value;
                  langue = LANG.indexOf(lang);
                });
              }
            ),
          )
        ],
      ),
      drawer: DrawerScreen(lang: langue,),
      body: Stack(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  menuTitle("Sites touristiques", Colors.green, context, 0, langue),
                  SizedBox(height: PADDING/4,),
                  menuList(touristique, true, Colors.green.withOpacity(0.5), context, 0, langue),
                  SizedBox(height: PADDING/2,),
                  menuTitle("Trouver un hotel", Colors.brown, context, 1, langue),
                  SizedBox(height: PADDING/4,),
                  menuList(hotels, true, Colors.brown.withOpacity(0.5), context, 1, langue),
                  SizedBox(height: PADDING/2,),
                  menuTitle("Snacks & Restaurants", Colors.deepOrange, context, 2, langue),
                  SizedBox(height: PADDING/4,),
                  menuList(restau, true, Colors.deepOrange.withOpacity(0.5), context, 2, langue),
                  SizedBox(height: PADDING/2,),
                  menuTitle("Trouver un taxi", Colors.blue, context, 4, langue),
                  SizedBox(height: PADDING/4,),
                  menuList(taxis, true, Colors.blue.withOpacity(0.5), context, 4, langue),
                  SizedBox(height: PADDING/2,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}