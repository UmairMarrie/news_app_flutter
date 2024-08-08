import 'package:flutter/material.dart';

class Trendingcard extends StatelessWidget {
   final String imageul;
   final String tag;
   final String time;
   final String title;
   final String author;
  const Trendingcard({super.key, required this.imageul, required this.tag, required this.time, required this.title, required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(5),
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    imageul,fit: BoxFit.cover,)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("$tag"),
              Text("$time"),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  "$title",
                  maxLines: 2,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.black87,
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(child: Text("$author",maxLines: 2,))
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
