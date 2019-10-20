import 'package:flutter/material.dart';
import 'package:insta_clone/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
        ? new SizedBox(
        child: new InstaStories(),
        height: deviceSize.height * 0.15,
      )
    : new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          //1st Row
          new Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new NetworkImage("https://images.pexels.com/photos/2100080/pexels-photo-2100080.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text(
                      "chirag_c.s",
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                new IconButton(
                    icon: new Icon(Icons.more_vert),
                    onPressed: null
                ),
              ],
            ),
          ),

          //2nd Row
          new Flexible(
            fit: FlexFit.loose,
            child: new Image.network(
              "https://images.pexels.com/photos/122383/pexels-photo-122383.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              fit: BoxFit.cover,
            ),
          ),

          //3rd Row
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Icon(
                      FontAwesomeIcons.heart
                    ),
                    new SizedBox(
                      width: 20.0,
                    ),
                    new Icon(
                        FontAwesomeIcons.comment
                    ),
                    new SizedBox(
                      width: 20.0,
                    ),
                    new Icon(
                        FontAwesomeIcons.paperPlane
                    ),
                  ],
                ),
                new Icon(
                    FontAwesomeIcons.bookmark
                ),
              ],
            ),
          ),

          //4thRow
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: new Text(
              "Liked by nit_mak, _vinnay and 10,08,234 others",
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          //5th Row
          new Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 8.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: new NetworkImage("https://images.pexels.com/photos/2100080/pexels-photo-2100080.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
                    ),
                  ),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                new Expanded(
                  child: new TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                    ),
                  ),
                )
              ],
            ),
          ),

          //6th Row
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: new Text("36 minutes ago ", style: new TextStyle(color: Colors.grey),),
          )
        ],
      ),
    );
  }
}
