import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(appBar: AppBar(title: const Text("Flutter Demo 123"),),
      body: const MyBody(),),
    )
  );
}



class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 100,
        decoration: const BoxDecoration(color: Colors.red),
        child: const Text("Flutter Container Demo",style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
    );
  }
}