import 'package:exp_whats_app_ui/components/storybtn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsApp(),
    );
  }
}

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  // ADDING THE MAIN COLOR OF THE APP
  Color mainColor = new Color(0xFF177767);

  // ADDING A LIST OF IMAGE URL TO SIMULATE THE AVATAR PICTURE
  List<String> imageURL = [
    "https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/0.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("WhatsApp Clone"),
        backgroundColor: mainColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz)
          ),
        ],
      ),

      body: Column(
        children: [
          // FIRST LET'S CREATE THE STORY TIME LINE CONTAINER
          Container(
            height: 200.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // LET'S CREATE A CUSTOM WIDGET FOR OUR STORY BUTTON
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: storyButton(imageURL[0], "Jason"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: storyButton(imageURL[1], "Chris"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: storyButton(imageURL[2], "Mary"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: storyButton(imageURL[3], "Steph"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: storyButton(imageURL[4], "Melanie"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: storyButton(imageURL[5], "Annie"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: storyButton(imageURL[6], "Rose"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: storyButton(imageURL[7], "Klay"),
                  ),
                ],
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}
