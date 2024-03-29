import 'package:flutter/material.dart';
import 'package:flutter_check/details_screen.dart';
import './utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my test")),
      body: Container(
        margin: EdgeInsets.all(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround ,
            children: [
              GestureDetector(
                child: Hero(
                  tag: UtilImages.img1,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                       image: NetworkImage(
                         UtilImages.img1,
                       ),
                      ),
                    )
                  ),
                ),
                onTap: () => changeRoute(context, UtilImages.img1),
              ),
              GestureDetector(
                child: Hero(
                  tag: UtilImages.img2,
                  child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              UtilImages.img2
                          ),
                        ),
                      )
                  ),
                ),
                onTap: () => changeRoute(context, UtilImages.img2),
              )
            ],
          )
      ),
    );
  }

  void changeRoute(BuildContext context, String img) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) {return PhotoDetails(img);}
    ));
  }

}
