import 'package:flutter/material.dart';

Widget storyButton(String imgUrl, String username)
{
  return Padding(
    padding: const EdgeInsets.all(7.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 20.0,
        ),
        SizedBox(height: 20.0,),
        Text(username, style: TextStyle(color: Colors.white),)
      ],
    ),
  );
}