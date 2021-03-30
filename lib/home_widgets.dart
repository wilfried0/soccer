import 'package:flutter/material.dart';
import 'constantes.dart';

menuTitle(String title, Color color){
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
      Text("Tout voir", style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),)
    ],
  );
}

menuList(int count){
  return Container(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: false,
          itemCount: count,
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.only(right: PADDING/4),
              child: Container(
                height: MediaQuery.of(context).size.width/2,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                    color: Colors.pink,
                  borderRadius: BorderRadius.all(Radius.circular(PADDING))
                ),
              ),
            );
          }
      )
  );
}