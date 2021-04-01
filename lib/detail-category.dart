import 'package:flutter/material.dart';
import 'package:soccer/constantes.dart';

class DetailCategory extends StatefulWidget {
  final List<Map> list;
  final int id, lang;
  DetailCategory({this.id, this.list, this.lang});
  @override
  _DetailCategoryState createState() => _DetailCategoryState();
}

class _DetailCategoryState extends State<DetailCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      appBar: PreferredSize(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.list[widget.id]["image"]),
                fit: BoxFit.cover
            ),
          ),
          child: AppBar(
            title: Text(widget.list[widget.id]["name"], style: TextStyle(
              fontWeight: FontWeight.bold,
              //fontSize: 12
            ),),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            //elevation: 0.0,
          ),
        ),
        preferredSize: Size.fromHeight(HOME_HEAD - PADDING),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PADDING),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Prix: ", style: tStyle(Colors.black),),
                  Spacer(),
                  Text(widget.list[widget.id]["prix"], style: tStyle(VERT),)
                ],
              ),
              Divider(),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: "Description: ",
                  style: tStyle(Colors.black),
                  children: [
                    TextSpan(
                      text: widget.list[widget.id]["description"],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                      )
                    )
                  ]
                ),
              ),
              Divider(),
              Row(
                children: [
                  Text("Latitude: ", style: tStyle(Colors.black),),
                  Spacer(),
                  Text(widget.list[widget.id]["latitude"],style: tStyle(VERT))
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text("Longitude: ", style: tStyle(Colors.black),),
                  Spacer(),
                  Text(widget.list[widget.id]["longitude"],style: tStyle(VERT))
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: VERT,
        onPressed: (){

        },
        label: Text("Voir la position GPS", style: tStyle(BLANC),)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  TextStyle tStyle(Color color){
    return TextStyle(
      color: color,
      fontWeight: FontWeight.bold
    );
  }
}
