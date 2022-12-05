import 'package:flutter/material.dart';
import 'package:flutter_demo/routes.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, form);
                },
                child: const Text(form)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, search);
                },
                child: const Text(search)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, news,
                      arguments: {"aid": 8888999});
                },
                child: const Text(news)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, dialog);
                },
                child: const Text(dialog)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, pageView);
                },
                child: const Text(pageView)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(pageViewBuild);
                },
                child: const Text(pageViewBuild)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(pageViewFullPage);
                },
                child: const Text(pageViewFullPage)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(pageViewSwiper);
                },
                child: const Text(pageViewSwiper)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(pageViewKeepAlive);
                },
                child: const Text(pageViewKeepAlive)),
          ],
        ),
      ),
    );
  }
}
