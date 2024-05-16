import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'descri.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 1.0, keepPage: true);
  List a=
  [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK-mpcSOc0NwlyJITK0Dqi5RiZfvRcxDpzVA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9IaJQGwWOEdGq-Z4CRXp41tTGkgBfzIAuXQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeE294DnfP0B93g_hzKDiv3kpTRgH-p3yXew&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU4Gr6LFvTUtZC8w1z0tz6fno9ARBtIxVqWA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYCHxlBNsQwnopi0PwB_Olj2__Fp4OyyeoSw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmIPwLXyo1yayJliSc2NBIVJhOAqRxF-RqTw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ59U3AcJBfKRQXQKW_A5dbAYk_ZMDFt4pbFw&s",
  ];

  List b =
      [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeE294DnfP0B93g_hzKDiv3kpTRgH-p3yXew&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU4Gr6LFvTUtZC8w1z0tz6fno9ARBtIxVqWA&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYCHxlBNsQwnopi0PwB_Olj2__Fp4OyyeoSw&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmIPwLXyo1yayJliSc2NBIVJhOAqRxF-RqTw&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ59U3AcJBfKRQXQKW_A5dbAYk_ZMDFt4pbFw&s",
      ];

  List c =
  [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_sh1HI-sf-2tYFga-HHsc-JIfXsjDGVdr6A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeE294DnfP0B93g_hzKDiv3kpTRgH-p3yXew&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYCHxlBNsQwnopi0PwB_Olj2__Fp4OyyeoSw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmIPwLXyo1yayJliSc2NBIVJhOAqRxF-RqTw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ59U3AcJBfKRQXQKW_A5dbAYk_ZMDFt4pbFw&s",
  ];
  List d =
  [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeE294DnfP0B93g_hzKDiv3kpTRgH-p3yXew&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU4Gr6LFvTUtZC8w1z0tz6fno9ARBtIxVqWA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYCHxlBNsQwnopi0PwB_Olj2__Fp4OyyeoSw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmIPwLXyo1yayJliSc2NBIVJhOAqRxF-RqTw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ59U3AcJBfKRQXQKW_A5dbAYk_ZMDFt4pbFw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeE294DnfP0B93g_hzKDiv3kpTRgH-p3yXew&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU4Gr6LFvTUtZC8w1z0tz6fno9ARBtIxVqWA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYCHxlBNsQwnopi0PwB_Olj2__Fp4OyyeoSw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ59U3AcJBfKRQXQKW_A5dbAYk_ZMDFt4pbFw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeE294DnfP0B93g_hzKDiv3kpTRgH-p3yXew&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_sh1HI-sf-2tYFga-HHsc-JIfXsjDGVdr6A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeE294DnfP0B93g_hzKDiv3kpTRgH-p3yXew&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYCHxlBNsQwnopi0PwB_Olj2__Fp4OyyeoSw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmIPwLXyo1yayJliSc2NBIVJhOAqRxF-RqTw&s",
  ];

  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 240,
                        width: double.infinity,
                        child: CarouselSlider.builder(
                            options: CarouselOptions(
                              height: 300,
                              aspectRatio: 16/9,
                              viewportFraction: 1,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 2),
                              autoPlayAnimationDuration: const Duration(milliseconds: 900),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              scrollDirection: Axis.horizontal,
                            ),
                            itemCount: a.length,
                            itemBuilder: (BuildContext context, int index, int pageViewIndex)
                            {
                              return Container(
                                width: 650,
                                height: 500,
                                child: Image.network(a[index],
                                  fit: BoxFit.cover,),
                              );
                            }
                        ),
                        ),
                      ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        setState(() {
                          Navigator.
                          push(context,
                            MaterialPageRoute(builder: (context) =>
                          des()),);
                        });
            
                      }, child:
                      const Text("Watch Now Free")),
                      ElevatedButton(onPressed: (){}, child:
                      const Icon(Icons.add)),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Center(
                    child:
                    DotsIndicator(
                      dotsCount: a.length,
                      position: currentIndex.toInt(),
                      decorator: DotsDecorator(activeColor: Colors.green),
                    ),
                  ),
                   SizedBox(height: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Container(
                            height: 188,
                            width: 420,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: b.length,
                                itemBuilder: (BuildContext con,index)
                                {
                                  return Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Column(
                                      children: [
                                        Image.network(b[index],
                                          fit: BoxFit.cover,),
                                      ],
                                    ),
                                  );
                                }
                            ),
                          ),
                        ],
                      ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Trending", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 3,),
                      Container(
                        height: 182,
                        width: 420,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: c.length,
                            itemBuilder: (BuildContext con,index)
                            {
                              return Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Column(
                                  children: [
                                    Image.network(c[index],
                                      fit: BoxFit.cover,),
                                  ],
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Top Shows in india", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Container(
                      height: 400,
                      child:
                      AutoHeightGridView(
                          itemCount: d.length,
                          builder: (context,index){
                            return Card(
                              child: Container(
                                height: 114,
                                width:200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                      ),
                                      child: Image.network(d[index]),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
