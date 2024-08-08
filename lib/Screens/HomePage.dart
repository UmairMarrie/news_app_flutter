import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/NewsController.dart';
import 'package:news_app/Screens/Widgets/NewsTile.dart';
import 'package:news_app/Screens/Widgets/TrendingCard.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Newscontroller newscontroller = Get.put(Newscontroller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("MyNewsApp"),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(100)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              Icon(Icons.book, size: 30),
              Icon(Icons.settings, size: 30)
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Text("See All"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: newscontroller.NewsList.map((e) => Trendingcard(
                        imageul:
                            e.urlToImage.toString(),
                        title:e.title.toString(),
                        author: e.author.toString(),
                        tag: "Trending No 1",
                        time: "2 Days Ago",
                      )).toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For you",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Text("See All"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: 
                 
                newscontroller.NewsList.map((element) =>  Newstile(
                    imageul:
                        "https://img.freepik.com/free-vector/global-technology-earth-news-bulletin-background_1017-33687.jpg?t=st=1722865093~exp=1722868693~hmac=e4aa563856ad2007065f6147cedfade51538eda36e833063b70ff15a65b3361b&w=900",
                    author: "Umair",
                    title: "Save water save life",
                    time: "2 Days ago",
                  )).toList(),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
