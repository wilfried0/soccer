import 'package:flutter/material.dart';
import 'package:soccer/can.dart';
import 'package:soccer/voir-plus.dart';

import 'constantes.dart';

class DrawerScreen extends StatefulWidget {
  final int lang;
  DrawerScreen({this.lang});
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(right: PADDING * 3),
        child: Container(
          color: VERT,
          padding: EdgeInsets.only(top:50,bottom: 70,left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/flags/cameroun.png"),
                            fit: BoxFit.cover
                        ),
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CAN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),),
                      Text('Cameroun 2021',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),

              SizedBox(height: PADDING * 2,),

              Column(
                children: drawerItems.map((element) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      drawerItems.indexOf(element) == 0?
                      Padding(
                        padding: EdgeInsets.only(bottom: PADDING),
                        child: Divider(height: 1,color: BLANC,),
                      ):Container(),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                          switch(drawerItems.indexOf(element)){
                            //case 0: ;break;
                            case 1: Navigator.push(context, MaterialPageRoute(builder: (_) => CanScreen(lang: widget.lang,)));break;
                            case 2: Navigator.push(context, MaterialPageRoute(builder: (_) => VoirPlus(index: 5, lang: widget.lang, color: VERT)));break;
                            case 3: Navigator.push(context, MaterialPageRoute(builder: (_) => VoirPlus(index: 3, lang: widget.lang, color: VERT)));break;
                            case 4: Navigator.push(context, MaterialPageRoute(builder: (_) => VoirPlus(index: 0, lang: widget.lang, color: Colors.pink.withOpacity(0.5))));break;
                            case 5: Navigator.push(context, MaterialPageRoute(builder: (_) => VoirPlus(index: 1, lang: widget.lang, color: Colors.brown.withOpacity(0.5))));break;
                            case 6: Navigator.push(context, MaterialPageRoute(builder: (_) => VoirPlus(index: 2, lang: widget.lang, color: Colors.deepOrange.withOpacity(0.5))));break;
                            case 7: Navigator.push(context, MaterialPageRoute(builder: (_) => VoirPlus(index: 4, lang: widget.lang, color: Colors.blue.withOpacity(0.5))));break;
                          }
                        },
                        child: Row(
                          children: [
                            Icon(element['icon'],color: Colors.white,size: 20,),
                            SizedBox(width: 10,),
                            Text(element['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: PADDING),
                        child: Divider(height: 1,color: BLANC,),
                      )
                    ],
                  ),
                )).toList(),
              ),

              SizedBox(height: PADDING * 2,),

              Row(
                children: [
                  /*Icon(Icons.settings,color: Colors.white,),
                  SizedBox(width: 10,),*/
                  Text('NEGPROD',style:TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Container(width: 2,height: 20,color: Colors.yellow,),
                  SizedBox(width: 10,),
                  Icon(Icons.copyright, color: Colors.yellow, size: 15,),
                  SizedBox(width: 5,),
                  Text('2021',style:TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold),),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("negprodattitude@gmail.com", style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: BLANC,
                  fontSize: 12
                ),),
              )
            ],
          ),

        ),
      ),
    );
  }
}
