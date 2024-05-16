import 'package:flutter/material.dart';
import 'package:newott/home.dart';
import 'package:newott/video.dart';

class des extends StatefulWidget {
  const des({ Key? key}) : super(key: key);

  @override
  State<des> createState() => _desState();
}

class _desState extends State<des> {

  List s =
  [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF9cpXOvg9P_bF5ixPyNwJY153Vo61Oq6apw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvzH8M_cTYMwJ22vD7qrNRBz5uJ2u8mwLu8A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYwIEzTI9CSQ5haTyWUAkAx7Oqmx0e1eNrUQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF9cpXOvg9P_bF5ixPyNwJY153Vo61Oq6apw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvzH8M_cTYMwJ22vD7qrNRBz5uJ2u8mwLu8A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYwIEzTI9CSQ5haTyWUAkAx7Oqmx0e1eNrUQ&s",
  ];

  List d =
  [
    "Ind vs Aus 2007 World cup",
    "2023 World cup Highlights",
    "2011 World cup Highlights",
    "2015 World cup Highlights",
    "2013 Champions Trophy Highlights",
    "Athu Ithu Ethu latest episode",
    "Tamil Pechu latest episode ",
    "Super singer",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: () { setState(() {
          Navigator.
          push(context,
            MaterialPageRoute(builder: (context) => Home()),);
        }); },),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1.0,bottom: 10),
              child: Container(
                  height: 210,
                  child: SamplePlayer()),
            ),
            Text("Honey Bee",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        
            Text("More Like this", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Container(
              height: 210,
              width: 400,
              // color: Colors.cyanAccent,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: s.length,
                  itemBuilder: (BuildContext con,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Image.network(s[index],
                            fit: BoxFit.cover,),
                          Text(d[index], style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    );
                  }
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Latest Release", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Container(
                  height: 380,
                  width: 400,
                  // color: Colors.cyanAccent,
                  child:
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: s.length,
                      itemBuilder: (BuildContext con,index)
                      {
                        return Column(
                          children: [
                            Image.network(s[index],
                              fit: BoxFit.cover,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(s[index],
                                fit: BoxFit.cover,),
                            ),
                          ],
                        );
                      }
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

