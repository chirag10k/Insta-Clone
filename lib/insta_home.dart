import 'package:flutter/material.dart';
import 'insta_body.dart';

class InstaHome extends StatelessWidget {

  final topBar = new AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: new SizedBox(
      height: 35.0, child: new Image.asset("assets/images/insta_logo.png")),
    actions: <Widget>[
      new Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: new Icon(Icons.send),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new InstaBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon:  new Icon(Icons.home),
                onPressed: () {},
              ),
              new IconButton(
                icon:  new Icon(Icons.search),
                onPressed: null,
              ),
              new IconButton(
                icon:  new Icon(Icons.add_box),
                onPressed: null,
              ),
              new IconButton(
                icon:  new Icon(Icons.favorite),
                onPressed: null,
              ),
              new IconButton(
                icon:  new Icon(Icons.account_box),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
