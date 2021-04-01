import 'package:flutter/material.dart';
import 'package:soccer/constantes.dart';
import 'package:soccer/details.dart';

class VoirPlus extends StatefulWidget {
  final int index, lang;
  final Color color;
  VoirPlus({@required this.index, @required this.lang, @required this.color});

  @override
  _VoirPlusState createState() => _VoirPlusState();
}

class _VoirPlusState extends State<VoirPlus> {

  String title, search = "Rechercher";
  List<Map> list = new List<Map>(), filter = new List<Map>(), unfilter = new List<Map>();
  bool focus = false, clear = false;
  TextEditingController _searchController;
  int rm = 120;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchController = new TextEditingController();
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
      list = restau;
      switch(widget.lang){
        //case 0: title = "Nos sponsors";break;
        case 1: search = "Search";break;
      }
    }else if(widget.index == 3){//Sponsors
      switch(widget.lang){
        case 0: title = "Nos sponsors";break;
        case 1: title = "Our sponsors";search = "Search";break;
      }
      list = sponsors;
    }else if(widget.index == 4){
      switch(widget.lang){
        case 0: title = "Trouver un taxi";break;
        case 1: title = "Find a taxi";search = "Search";break;
      }
      list = taxis;
    }else if(widget.index == 5){
      switch(widget.lang){
        case 0: title = "FAN ZONE";break;
        case 1: title = "FAN ZONE";search = "Search";break;
      }
    }else if(widget.index == 6){
      switch(widget.lang){
        case 0: title = "CAN";break;
        case 1: title = "CAN";search = "Search";break;
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: BG,
      appBar: AppBar(
        backgroundColor: VERT,
        elevation: 0.0,
        centerTitle: true,
        title: Text("$title", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: VERT,
                  child: Padding(
                    padding: EdgeInsets.only(left: PADDING, right: PADDING, top: PADDING/2, bottom: PADDING*2.5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(PADDING)),
                        color: BLANC
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 0, right: 0, bottom: PADDING/2 - 5),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _searchController,
                          onChanged: (e){},
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusColor: VERT,
                            hintText: "$search",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13
                            ),
                            prefixIcon: IconButton(
                              icon: Icon(Icons.search),
                              onPressed: null
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: (){
                                setState(() {
                                  _searchController.clear();
                                });
                              }
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 72),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: BG,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)
                        )
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: PADDING, right: PADDING),
              child: Container(
                height: MediaQuery.of(context).size.height - 200,
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 1,
                    controller: new ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                  children: list.map((e) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Details(id: list.indexOf(e), index: widget.index, lang: widget.lang)));
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
                          widget.index != 3?Padding(
                            padding: EdgeInsets.only(top: HOME_HEAD/2 + 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(PADDING/2),
                                      topRight: Radius.circular(PADDING/2)
                                  )
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(e["name"].toString().length>20?e["name"].toString().substring(0, 20)+"...":e["name"],
                                  style: TextStyle(
                                      color: BLANC,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10
                                  ),),
                              ),
                            ),
                          ):Container(),
                          widget.index != 3?Padding(
                            padding: EdgeInsets.only(right: PADDING * 3),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: widget.color.withOpacity(0.5),
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
                                    Text(e["lieu"], style: TextStyle(
                                        color: BLANC,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ):Container(),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
