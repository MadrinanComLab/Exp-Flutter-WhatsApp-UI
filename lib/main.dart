import 'package:exp_whats_app_ui/components/chatTile.dart';
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
  var containerRadius = Radius.circular(30.0);

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

  List<String> usernames = [
    "Jason", "Chris", "Mary", "Steph",
    "Melanie", "Annie", "Rose", "Klay",
    "Julius"
  ];

  List<String> messages = [
    "Sup!",
    "Take care bro!",
    "See you in the office.",
    "Aight.",
    "Take care ma'am",
    "Wanna hang out?",
    "Wanna hangout with Annie?",
    "Bro, let's hangout with Annie and Rose",
    "Sup Julius. Its been a while!"
  ];

  List<String> msgDate = [
    "Now",
    "2:35 PM",
    "12:43 PM",
    "09:31 AM",
    "Yesterday",
    "Yesterday",
    "Wed",
    "Wed",
    "Tue"
  ];

  List<bool> seenMsg = [
    true,
    false,
    true,
    true,
    false,
    false,
    true,
    true,
    false
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
            height: 125.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // LET'S CREATE A CUSTOM WIDGET FOR OUR STORY BUTTON
                  storyButton(imageURL[0], "Jason"),
                  storyButton(imageURL[1], "Chris"),
                  storyButton(imageURL[2], "Mary"),
                  storyButton(imageURL[3], "Steph"),
                  storyButton(imageURL[4], "Melanie"),
                  storyButton(imageURL[5], "Annie"),
                  storyButton(imageURL[6], "Rose"),
                  storyButton(imageURL[7], "Klay")
                ],
              ),
            ),
          ),

          // NOW LET'S CREATE CHAT TIMELINE
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: containerRadius, topRight: containerRadius),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  child: ListView.separated(
                      itemBuilder: (BuildContext context, int i)
                      {
                        return chatTile(imageURL[i], usernames[i], messages[i], msgDate[i], seenMsg[i]);
                      },
                      separatorBuilder: (BuildContext context, int index){ return SizedBox(height: 5.0); },
                      itemCount: imageURL.length
                  ),
                  /*  child: ListView(
                    children: [
                      // NOW LET'S CREATE OUR CHAT TILE CUSTOM WIDGET
                      chatTile(imageURL[3], "username", "message", "date", false),
                      chatTile(imageURL[3], "username", "message", "date", false),
                      chatTile(imageURL[3], "username", "message", "date", false),
                      chatTile(imageURL[3], "username", "message", "date", false),
                      chatTile(imageURL[3], "username", "message", "date", false),
                      chatTile(imageURL[3], "username", "message", "date", false),
                      chatTile(imageURL[3], "username", "message", "date", false),
                      chatTile(imageURL[3], "username", "message", "date", false)
                    ],
                  ),*/
                ),
              )
          )
        ],
      ),
    );
  }
}
