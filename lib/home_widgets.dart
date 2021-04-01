import 'package:flutter/material.dart';
import 'package:soccer/details.dart';
import 'package:soccer/voir-plus.dart';
import 'constantes.dart';

menuTitle(String title, Color color, BuildContext context, int index, int lang){
  return Row(
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            Container(
              height: PADDING+ 5,
              width: PADDING/3,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: PADDING/4),
              child: Text("$title", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),),
            ),
          ],
        ),
      ),
      Spacer(),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => VoirPlus(index: index, lang: lang, color: color,)));
        },
        child: Text("Voir plus", style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),),
      )
    ],
  );
}
int rm = 120;
menuList(List<Map> list, bool showText, Color color, BuildContext context, int lieu, int lang){
  return Container(
      height: HOME_HEAD - rm,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: false,
          itemCount: list.length,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                //print(index);
                Navigator.push(context, MaterialPageRoute(builder: (_) => Details(id: index, index: lieu, lang: lang)));
              },
              child: Padding(
                padding: EdgeInsets.only(right: PADDING/4),
                child: Stack(
                  children: [
                    Container(
                      height: HOME_HEAD - rm,
                      width: HOME_HEAD - rm,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(PADDING/2)),
                        image: DecorationImage(
                          image: AssetImage(list[index]["image"]),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    showText == true?Padding(
                      padding: EdgeInsets.only(top: HOME_HEAD/2 - PADDING*2),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(list[index]["name"].toString().length>20?list[index]["name"].toString().substring(0, 20)+"...":list[index]["name"],
                            style: TextStyle(
                              color: BLANC,
                              fontWeight: FontWeight.bold,
                              fontSize: 10
                          ),),
                        ),
                      ),
                    ):Container(),
                    showText == true?Container(
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(PADDING/2),
                          bottomRight: Radius.circular(PADDING/2)
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(PADDING/4),
                        child: Row(
                          children: [
                            Icon(Icons.location_on, color: BLANC,size: 20,),
                            Text(list[index]["lieu"], style: TextStyle(
                              color: BLANC,
                              fontWeight: FontWeight.bold,
                              fontSize: 10
                            ),),
                          ],
                        ),
                      ),
                    ):Container(),
                  ],
                ),
              ),
            );
          }
      )
  );
}