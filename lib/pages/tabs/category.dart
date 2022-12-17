import 'package:flutter/material.dart';
import '../search.dart';
import '../form.dart';
import '../news.dart';
import '../../routes.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              print("-- Category ElevatedButton ");
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const SearchPage();
              }));

              // ignore: prefer_const_constructors
            },
            child: const Text("搜索"),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const FormPage();
                }));
              },
              child: const Text("From")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return NewsPages(
                    title: "最新新闻报道",
                    arguments: const {"aid": 8899},
                  );
                }));
              },
              child: const Text("News")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, keyWidgetPage);
              },
              child: const Text(keyWidgetPage)),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, animatedListPage);
              },
              child: const Text(animatedListPage)),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, animatedContainerPage);
              },
              child: const Text(animatedContainerPage)),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, photoViewPage);
              },
              child: const Text(photoViewPage)),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, getXPage);
              },
              child: const Text(getXPage)),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            //点击事件
            onTap: () {
              Navigator.pushNamed(context, hero, arguments: {
                "url": "images/a.jpeg",
              });
            },
            child: Container(
              width: 200,
              height: 100,
              color: Colors.yellow,
              child: Hero(
                  tag: "images/a.jpeg",
                  child: Image.asset(
                    "images/a.jpeg",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
