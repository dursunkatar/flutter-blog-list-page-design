import 'package:flutter/material.dart';

final List<Map> articles = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
    "resim": "1.jpg",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
    "resim": "7.jpg",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
    "resim": "3.jpg",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
    "resim": "4.jpg",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
    "resim": "5.jpg",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
    "resim": "6.jpg",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
    "resim": "7.jpg",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
    "resim": "1.jpg",
  },
];

void main() {
  runApp(BlogApp());
}

class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.blue.shade50,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120.0),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Icon(Icons.drag_indicator, color: Colors.black),
              ),
              centerTitle: true,
              title: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 15, top: 20),
                  child: Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
              bottom: TabBar(
                indicatorColor: Colors.pink,
                labelColor: Colors.pink,
                unselectedLabelColor: Colors.black54,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      "For You",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Design",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Beauty",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Education",
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [buildListView(), Text("B"), Text("C"), Text("C")],
          ),
        ),
      ),
    );
  }
}

ListView buildListView() {
  return ListView.builder(
    itemBuilder: (context, index) => Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
      margin: EdgeInsets.only(top: 10, left: 15, right: 15),
      child: ListTile(
        leading: Image.asset("images/" + articles[index]["resim"]),
        title: Text(articles[index]["title"]),
        subtitle: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 10,
            ),
            SizedBox(width: 10,),
            Text(articles[index]["author"]),
            SizedBox(width: 10,),
            Text(articles[index]["time"]),
          ],
        ),
      ),
    ),
    itemCount: articles.length,
  );
}
