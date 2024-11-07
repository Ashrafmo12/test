import 'package:flutter/material.dart';
import 'package:newss/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<news_provider>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: p.obj?.prayer.length,
          itemBuilder: (context, index) {
            p.fechdata();
            return Container(
              child: Column(
                children: [
                  Image.network("${p.obj?.prayer[index]["urlToImage"]}"),
                  SizedBox(height: 20,),
                  Text("${p.obj?.prayer[index]["title"]}"),
                  SizedBox(height: 20,),
                  Text("${p.obj?.prayer[index]["description"]}")
                ],
              ),
            );
          },
      ),
    );
  }
}
