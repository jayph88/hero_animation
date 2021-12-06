import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
class PhotoDetails extends StatelessWidget {
  final String img;
  PhotoDetails(this.img);

  @override
  Widget build(BuildContext context) {
    timeDilation = 10;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("details"),),
      body: Align(
        alignment: Alignment.center,
        child: Hero(
          tag: img,
          child: Container(
            alignment: Alignment.center,
            height: height*.60,
            width: width*.80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(img),
              )
            ),
          ),
        ),
      ),
    );
  }
}
