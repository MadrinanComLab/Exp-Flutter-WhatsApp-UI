import 'package:flutter/material.dart';

Widget chatTile(String imgUrl, String username, String message, String date, bool seen)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 30.0,
        ),

        SizedBox(width: 8.0,),

        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                          username,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500
                          ),
                        )
                    ),
                    Text(date)
                  ],
                ),

                SizedBox(height: 5.0,),

                Row(
                  children: [
                    Expanded(child: Text(username)),
                    seen ? Icon(Icons.check_circle, size: 16.0, color: Colors.green,) : Icon(Icons.check_circle_outline, size: 16.0, color: Colors.grey,)
                  ],
                ),
              ],
            )
        )
      ],
    ),
  );
}