import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soccer/constantes.dart';

class CanScreen extends StatefulWidget {
  final int lang;
  CanScreen({this.lang});
  @override
  _CanScreenState createState() => _CanScreenState();
}

class _CanScreenState extends State<CanScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: BG,
        appBar: AppBar(
          backgroundColor: VERT,
          elevation: 0.0,
          title: Text("CAN", style: TextStyle(
              color: BLANC,
              fontWeight: FontWeight.bold
          ),),
          centerTitle: true,
        ),
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
                //height: 70,
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
              padding: EdgeInsets.only(top: HOME_HEAD - 30, left: PADDING, right: PADDING),
              child: DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Center(
                        child: TabBar(
                          labelColor: VERT,
                          isScrollable: true,
                          tabs: [
                            Tab(child: Text("POULES", style: tStyle(),),),
                            Tab(child: Text("PROGRAMME", style: tStyle(),),),
                            Tab(child: Text("SCORES", style: tStyle(),),),
                          ]
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 360,
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: PADDING,),
                                Text("POULE A", style: tStyle(),),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: PADDING, right: PADDING, top: PADDING/2, bottom: PADDING/4),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: SvgPicture.asset("assets/flags/ghana.svg"),
                                                  ),
                                                  Text("Ghana", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cameroun.png"),
                                                  ),
                                                  Text("Cameroun", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cote-ivoire.gif"),
                                                  ),
                                                  Text("Côte d'ivoire", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/nigeria.png"),
                                                  ),
                                                  Text("Nigéria", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: PADDING,),
                                Text("POULE B", style: tStyle(),),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: PADDING, right: PADDING, top: PADDING/2, bottom: PADDING/4),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: SvgPicture.asset("assets/flags/ghana.svg"),
                                                  ),
                                                  Text("Ghana", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cameroun.png"),
                                                  ),
                                                  Text("Cameroun", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cote-ivoire.gif"),
                                                  ),
                                                  Text("Côte d'ivoire", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/nigeria.png"),
                                                  ),
                                                  Text("Nigéria", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: PADDING,),
                                Text("POULE C", style: tStyle(),),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: PADDING, right: PADDING, top: PADDING/2, bottom: PADDING/4),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: SvgPicture.asset("assets/flags/ghana.svg"),
                                                  ),
                                                  Text("Ghana", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cameroun.png"),
                                                  ),
                                                  Text("Cameroun", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cote-ivoire.gif"),
                                                  ),
                                                  Text("Côte d'ivoire", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/nigeria.png"),
                                                  ),
                                                  Text("Nigéria", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: PADDING,),
                                Text("POULE D", style: tStyle(),),
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: PADDING, right: PADDING, top: PADDING/2, bottom: PADDING/4),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: SvgPicture.asset("assets/flags/ghana.svg"),
                                                  ),
                                                  Text("Ghana", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cameroun.png"),
                                                  ),
                                                  Text("Cameroun", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cote-ivoire.gif"),
                                                  ),
                                                  Text("Côte d'ivoire", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/nigeria.png"),
                                                  ),
                                                  Text("Nigéria", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text("Lun, 02/05/2021"),
                                            Spacer(),
                                            Text("19H45 GMT")
                                          ],
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cameroun.png"),
                                                  ),
                                                  Text("Cameroun", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                              SizedBox(width: PADDING * 3),
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: SvgPicture.asset("assets/flags/ghana.svg"),
                                                  ),
                                                  Text("Ghana", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: PADDING/2,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on, color: VERT,),
                                            Text("Stade Hamadou Ahidjo"),
                                            Spacer(),
                                            Text("Yaoundé")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text("Mar, 03/05/2021"),
                                            Spacer(),
                                            Text("19H45 GMT")
                                          ],
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: SvgPicture.asset("assets/flags/ghana.svg"),
                                                  ),
                                                  Text("Ghana", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                              SizedBox(width: PADDING * 3),
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cote-ivoire.gif"),
                                                  ),
                                                  Text("Côte d'ivoire", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: PADDING/2,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on, color: VERT,),
                                            Text("Stade Olembé"),
                                            Spacer(),
                                            Text("Yaoundé")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text("Mer, 03/05/2021"),
                                            Spacer(),
                                            Text("19H45 GMT")
                                          ],
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: SvgPicture.asset("assets/flags/ghana.svg"),
                                                  ),
                                                  Text("Ghana", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                              SizedBox(width: PADDING * 3),
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cote-ivoire.gif"),
                                                  ),
                                                  Text("Côte d'ivoire", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: PADDING/2,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on, color: VERT,),
                                            Text("Stade Japoma"),
                                            Spacer(),
                                            Text("Douala")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text("Mer, 03/05/2021"),
                                            Spacer(),
                                            Text("19H45 GMT")
                                          ],
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/nigeria.png"),
                                                  ),
                                                  Text("Nigeria", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                              SizedBox(width: PADDING * 3),
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 70,
                                                    width: 70,
                                                    child: Image.asset("assets/flags/cote-ivoire.gif"),
                                                  ),
                                                  Text("Côte d'ivoire", style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold
                                                  ),)
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: PADDING/2,),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on, color: VERT,),
                                            Text("Stade Roundé Adja"),
                                            Spacer(),
                                            Text("Garoua")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                child: SvgPicture.asset("assets/flags/ghana.svg"),
                                              ),
                                              Text("Ghana", style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                          SizedBox(width: PADDING),
                                          Padding(
                                            padding: EdgeInsets.only(bottom: PADDING),
                                            child: Text("2 : 0", style: TextStyle(
                                                //color: BLANC,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30
                                            ),),
                                          ),
                                          SizedBox(width: PADDING),
                                          Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                child: Image.asset("assets/flags/cote-ivoire.gif"),
                                              ),
                                              Text("Côte d'ivoire", style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                child: Image.asset("assets/flags/cameroun.png"),
                                              ),
                                              Text("Cameroun", style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                          SizedBox(width: PADDING),
                                          Padding(
                                            padding: EdgeInsets.only(bottom: PADDING),
                                            child: Text("2 : 0", style: TextStyle(
                                              //color: BLANC,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30
                                            ),),
                                          ),
                                          SizedBox(width: PADDING),
                                          Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                child: SvgPicture.asset("assets/flags/ghana.svg"),
                                              ),
                                              Text("Ghana", style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                child: SvgPicture.asset("assets/flags/ghana.svg"),
                                              ),
                                              Text("Ghana", style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                          SizedBox(width: PADDING),
                                          Padding(
                                            padding: EdgeInsets.only(bottom: PADDING),
                                            child: Text("2 : 0", style: TextStyle(
                                              //color: BLANC,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30
                                            ),),
                                          ),
                                          SizedBox(width: PADDING),
                                          Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                child: Image.asset("assets/flags/cote-ivoire.gif"),
                                              ),
                                              Text("Côte d'ivoire", style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                child: Image.asset("assets/flags/nigeria.png"),
                                              ),
                                              Text("Nigeria", style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                          SizedBox(width: PADDING),
                                          Padding(
                                            padding: EdgeInsets.only(bottom: PADDING),
                                            child: Text("2 : 0", style: TextStyle(
                                              //color: BLANC,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30
                                            ),),
                                          ),
                                          SizedBox(width: PADDING),
                                          Column(
                                            children: [
                                              Container(
                                                height: 70,
                                                width: 70,
                                                child: Image.asset("assets/flags/cote-ivoire.gif"),
                                              ),
                                              Text("Côte d'ivoire", style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                      ),
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
  TextStyle tStyle(){
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13
    );
  }
}
