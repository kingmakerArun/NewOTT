import 'package:flutter/material.dart';
import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:newott/home.dart';


class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  
  List view1=
      [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo2qjpLNYD6fkXLLYF8NQf4UJENVbSvmk-xQ&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRnQvATC-FW--h9q4D3A_cbGUYYa-M7FEATw&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDTfQTSCrtLBwwSc9XHh73vwz5sllncV1D4w&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnFKokvPa3IgQHbBUi6gekNQdjdaGiUrgELg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAoL6AGn1__9DZc5ZEpaHLu4nix2VyeG8mzQ&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCntXid9u4TyayMo2hq0SuEldEHRFcuU-dOA&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQjw756vh-5jUljX0WZHU3PCfv4Uy_2F4fqg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-4pKoky2sa7lRPOxpNKuxb0UbDzTcVm23iQ&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9pqzQLAid2voyhzzB5XVmqQhccYihHLdwbg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwo34cQsZYvRRxTfbgg0GS7vUOKbdB1Vw3Qw&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSo2qjpLNYD6fkXLLYF8NQf4UJENVbSvmk-xQ&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRnQvATC-FW--h9q4D3A_cbGUYYa-M7FEATw&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDTfQTSCrtLBwwSc9XHh73vwz5sllncV1D4w&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnFKokvPa3IgQHbBUi6gekNQdjdaGiUrgELg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAoL6AGn1__9DZc5ZEpaHLu4nix2VyeG8mzQ&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCntXid9u4TyayMo2hq0SuEldEHRFcuU-dOA&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQjw756vh-5jUljX0WZHU3PCfv4Uy_2F4fqg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-4pKoky2sa7lRPOxpNKuxb0UbDzTcVm23iQ&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9pqzQLAid2voyhzzB5XVmqQhccYihHLdwbg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwo34cQsZYvRRxTfbgg0GS7vUOKbdB1Vw3Qw&s",
      ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: () { setState(() {
            Navigator.
            push(context,
              MaterialPageRoute(builder: (context) => Home()),);
          }); },),
          title: TextFormField(
            decoration: const InputDecoration(
              prefixIcon:Icon(Icons.search),
              hintText: "Movies, shows and more",
              suffixIcon: Icon(Icons.mic),
              border:OutlineInputBorder(),
            ),
          ),
        ),
        body:
        AutoHeightGridView(
            itemCount: view1.length,
            builder: (context,index){
              return Card(
                child: Container(
                  height: 115,
                  width:200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        child: Image.network(view1[index]),
                      )
                    ],
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}