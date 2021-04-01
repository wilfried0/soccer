import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:soccer/constantes.dart';
import 'package:soccer/detail-category.dart';

class Details extends StatefulWidget {
  final int index, lang, id;
  Details({@required this.id, @required this.index, @required this.lang});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String title, search = "Rechercher";
  List<Map> list = new List<Map>(), _list = legumes;
  bool focus = false, clear = false;
  int clic = 0;
  List values = [5.0, 3.0, 4.0];
  List colors = [Colors.red, Colors.green, Colors.orangeAccent, Colors.blue, Colors.brown, Colors.purple];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.index == 0){
      switch(widget.lang){//touriste
        case 0: title = "Sites touristiques";break;
        case 1: title = "Tourist attractions"; search = "Search";break;
      }
      list = touristique;
    }else if(widget.index == 1){//hotels
      switch(widget.lang){
        case 0: title = "Hôtels";break;
        case 1: title = "Hostels";search = "Search";break;
      }
      list = hotels;
    }else if(widget.index == 2){//restau
      title = "Snack & Restaurant";
      switch(widget.lang){
      //case 0: title = "Nos sponsors";break;
        case 1: search = "Search";break;
      }
      list = restau;
    }else if(widget.index == 3){//Sponsors
      switch(widget.lang){
        case 0: title = "Nos sponsors";break;
        case 1: title = "Our sponsors";search = "Search";break;
      }
    }else if(widget.index == 4){//Taxis
      list = taxis;
      switch(widget.lang){
        case 0: title = "Trouver un taxi";break;
        case 1: title = "Find a taxi";search = "Search";break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BG,
      appBar: PreferredSize(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(list[widget.id]["image"]),
                fit: BoxFit.cover
            ),
          ),
          child: Column(
            children: [
              AppBar(
                title: Text(list[widget.id]["name"], style: TextStyle(
                  fontWeight: FontWeight.bold,
                  //fontSize: 12
                ),),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                //elevation: 0.0,
              ),

              widget.index == 1?Padding(
                padding: EdgeInsets.only(top: HOME_HEAD - PADDING*6),
                child: SmoothStarRating(
                  allowHalfRating: false,
                  onRated: null,
                  starCount: 5,
                  spacing: 5.0,
                  borderColor: Colors.yellow,
                  color: Colors.yellow,
                  rating: values[new Random().nextInt(3)],
                ),
              ):Container()
            ],
          ),
        ),
        preferredSize: Size.fromHeight(HOME_HEAD - PADDING),
      ),
      body: SingleChildScrollView(
        child:widget.index == 2? Column(
          children: [
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menuFood.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      print(index);
                      setState(() {
                        clic = index;
                        switch(index){
                          case 0: _list = legumes; break;
                          case 1: _list = Sauces; break;
                          case 2: _list = Mets; break;
                          case 4: _list = Complements; break;
                          case 6: _list = Vins; break;
                        default: _list = [];break;
                        }
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(PADDING)),
                          color:clic == menuFood[index]['id']? colors[new Random().nextInt(6)].withOpacity(0.5) :BLANC,
                          border: Border.all(
                            color:clic == menuFood[index]['id']?Colors.transparent:colors[new Random().nextInt(6)],
                            width: 2
                          )
                        ),
                        child: Center(child: Text(menuFood[index]['title'], style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: clic == menuFood[index]['id']?BLANC: Colors.black
                        ),)),
                      ),
                    ),
                  );
                }
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: PADDING, right: PADDING, bottom: PADDING),
              child: Container(
                child:_list.length<=0?
                Padding(
                  padding: EdgeInsets.only(top: PADDING * 4),
                  child: Text("Catégorie vide",
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black
                  ),),
                ): GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 1,
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: _list.map((e) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => DetailCategory(id: _list.indexOf(e),list: _list,lang: widget.lang,)));
                      },
                      child: Stack(
                        children: [
                          Container(
                            //height: HOME_HEAD,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(PADDING/2)),
                              image: DecorationImage(
                                  image: AssetImage(e["image"]),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: HOME_HEAD/2 + 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: colors[new Random().nextInt(6)].withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(PADDING/2),
                                      topRight: Radius.circular(PADDING/2)
                                  )
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(8, 5, 8, 8),
                                child: Text(e["name"].toString().length>20?e["name"].toString().substring(0, 20)+"...":e["name"],
                                  style: TextStyle(
                                      color: BLANC,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12
                                  ),),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: PADDING * 2),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: colors[new Random().nextInt(6)].withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(PADDING/2),
                                      bottomRight: Radius.circular(PADDING/2)
                                  )
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(PADDING/4),
                                child: Text(e["prix"], style: TextStyle(
                                    color: BLANC,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),),
                              ),
                            ),
                          ),

                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_) => DetailCategory(id: _list.indexOf(e),list: _list,lang: widget.lang,)));
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: PADDING * 3.5, left: PADDING * 2.5),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(PADDING/2)),
                                  color: Colors.green.withOpacity(0.8),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: PADDING, right: PADDING, top: PADDING/2, bottom: PADDING/2),
                                  child: Text("Détails", style: TextStyle(
                                    color: BLANC,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ):Container(),
      ),
    );
  }
}
