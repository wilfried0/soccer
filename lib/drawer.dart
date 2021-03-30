import 'package:flutter/material.dart';

import 'constantes.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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

            Column(
              children: drawerItems.map((element) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    drawerItems.indexOf(element) == 0?
                    Padding(
                      padding: EdgeInsets.only(bottom: PADDING),
                      child: Divider(height: 2,color: BLANC,),
                    ):Container(),
                    Row(
                      children: [
                        Icon(element['icon'],color: Colors.white,size: 25,),
                        SizedBox(width: 10,),
                        Text(element['title'],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: PADDING),
                      child: Divider(height: 2,color: BLANC,),
                    )
                  ],
                ),

              )).toList(),
            ),

            Row(
              children: [
                Icon(Icons.settings,color: Colors.white,),
                SizedBox(width: 10,),
                Text('Configuration',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Container(width: 2,height: 20,color: Colors.white,),
                SizedBox(width: 10,),
                Icon(Icons.copyright, color: BLANC, size: 15,),
                SizedBox(width: 5,),
                Text('2021',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),

      ),
    );
  }
}
