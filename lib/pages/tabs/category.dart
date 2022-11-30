import 'package:flutter/material.dart';
import './search.dart';
import '../form.dart';
import '../news.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Center(child: Text("Category")),
        const SizedBox(
          height: 20,
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
          height: 20,
        ),
        ElevatedButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const FormPage();
            })
          );
        }, child: const Text("From")),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const NewsPages(title: "最新新闻报道",aid: 12,);
            })
          );
        }, child: const Text("News"))
      ],
    );
  }
}
