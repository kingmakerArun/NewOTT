import 'package:flutter/material.dart';
// import 'package:newott/Profile.dart';
import 'package:newott/home.dart';
import 'Profile.dart';
import 'login page.dart';
import 'package:newott/ModelTheme.dart';
import 'package:provider/provider.dart';

class Space extends StatefulWidget {
  const Space({super.key});

  @override
  State<Space> createState() => _SpaceState();
}

class _SpaceState extends State<Space> {

  List a =
  [
   "Account Settings",
   "Downloads",
   "App Languages",
   "Parental Controls",
   "Help & Support",
  ];

  List b =
  [
    "Subscription Details & Device Manager",
    "Download Quality, Storage & more",
    "English/தமிழ்",
    "Parental Lock",
    "Help Centre",
  ];

  static const _iconTypes = <IconData>
      [
        Icons.account_circle_outlined,
        Icons.download_sharp,
        Icons.language,
        Icons.lock_outline,
        Icons.help_outline_outlined,
      ];

  static const _iconNavi = <IconData>
  [
    Icons.navigate_next,
    Icons.expand_more_outlined,
    Icons.navigate_next,
    Icons.expand_more_outlined,
    Icons.navigate_next,
  ];

  @override
  Widget build(BuildContext context) {
    return
      Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child) {
      return
        Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded),onPressed: () { setState(() {
          Navigator.
          push(context,
            MaterialPageRoute(builder: (context) => Home()),);
        }); },),
        title: const Text("Help & Setting", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              child: ListView.builder(
              itemCount: a.length,
              itemBuilder: (context ,index) {
                return ListTile(
                  minVerticalPadding: 20,
                  leading: Icon(_iconTypes[index]),
                  title: Column(
                    children:
                    [
                      Text(a[index], style: const TextStyle(
                          fontWeight: FontWeight.bold),),
                      Column(
                        children: [
                          SizedBox(height: 0.0,),
                          Text(b[index],
                            style: const TextStyle(fontSize: 12),),
                        ],
                      ),
                    ],
                  ),
                  trailing: Icon(_iconNavi[index]),
                );
              },
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()),);
              });
            }, child: Text("Profile")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(themeNotifier.isDark
                      ? Icons.wb_sunny
                      : Icons.nightlight_round),
                  onPressed: () {
                    themeNotifier.isDark
                        ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;
                  },),

                ElevatedButton(
                  onPressed: () {
                    themeNotifier.isDark
                        ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;
                  },
                  child: Text('Apps theme'),
                ),
              ],
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.
                push(context,
                  MaterialPageRoute(builder: (context) =>
                  const LoginPage()),);
              });
            }, child: const Text("Logout", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),),
          SizedBox(height: 200,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Privacy Policy", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                Text("   .   ", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                Text("Subscriber Agreement", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 5,),
            Text("App Version 24.03.11.13", style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
        });
  }
}



