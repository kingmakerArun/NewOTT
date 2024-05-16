import 'package:flutter/material.dart';
import 'package:newott/home.dart';

class Download extends StatefulWidget {
  const Download({super.key});

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {

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
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo0F_TVlyQ3tpXN2Q086V7SZQg8xm1NLkvUw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwo34cQsZYvRRxTfbgg0GS7vUOKbdB1Vw3Qw&s",
  ];
  List a=
  [
    "CSK vs RCB",
    "Neeya Naana",
    "Cook with Comali",
    "Siragadika Assai",
    "Tamil Pechchu",
    "Andakakasam",
    "Music Manaadu",
    "Kathanayaki",
    "Comedy Raja Kalagal Rani",
    "The Wall",
    "Big Boss",
  ];

  List b=
  [
    "345 MB",
    "840 MB",
    "790 MB",
    "815 MB",
    "1.2 GB",
    "615 MB",
    "340 MB",
    "890 MB",
    "752 MB",
    "830 MB",
    "893 MB",
    "866 MB",
    "782 MB",
    "1.5 GB",
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
        title: const Text("Downloads",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: CustomScrollView(
            slivers: [
        SliverList(delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index){
          return ListTile(
            minVerticalPadding: 30,
            leading: SizedBox(
              height: 100,
              width: 120,
              child: Image.network(view1[index]),
            ),
            title: Column(
              children: [
                Text(a[index],style: const TextStyle(fontWeight: FontWeight.bold),),
                Text(b[index],style: const TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          );
            },
          childCount: a.length,
        ),
        ),
],
      ),
    );
  }
}
