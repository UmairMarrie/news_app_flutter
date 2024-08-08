import 'package:flutter/material.dart';

class Newstile extends StatelessWidget {
  final String imageul;
  final String author;
  final String title;
  final String time;
  const Newstile({super.key, required this.imageul, required this.author, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(imageul,fit: BoxFit.cover,),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.black87,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("$author")
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text("$title",
                      maxLines: 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("$time"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
