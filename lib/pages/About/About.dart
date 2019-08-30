import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:thepublictransport_app/framework/theme/ThemeEngine.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  var theme = ThemeEngine.getCurrentTheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      floatingActionButton: FloatingActionButton(
        heroTag: "HEROOOO",
        onPressed: () {
          Navigator.of(context).pop();
        },
        backgroundColor: theme.floatingActionButtonColor,
        child: Icon(Icons.arrow_back, color: theme.floatingActionButtonIconColor),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Über diese App",
                      style: TextStyle(
                          color: theme.titleColor,
                          fontSize: 30,
                          fontFamily: 'NunitoSansBold'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://avatars3.githubusercontent.com/u/44241397")
                          )
                      )
                  ),
                  title: Text(
                    "The Public Transport",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://github.com/thepublictransport');
                          }),
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.twitter,
                            color: Colors.lightBlueAccent,
                          ),
                          onPressed: () {
                            openURL('https://twitter.com/OeffisFuerAlle');
                          }),
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.instagram,
                            color: Colors.purpleAccent,
                          ),
                          onPressed: () {
                            openURL('https://www.instagram.com/thepublictransport/');
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    "Unsere Entwickler:",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold",
                        fontSize: 20
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://avatars1.githubusercontent.com/u/20514588")
                          )
                      )
                  ),
                  title: Text(
                    "Tristan Marsell",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  subtitle: Text(
                    "Initiator & Hauptentwickler",
                    style: TextStyle(
                      color: theme.subtitleColor
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://github.com/PDesire');
                          }),
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.twitter,
                            color: Colors.lightBlueAccent,
                          ),
                          onPressed: () {
                            openURL('https://twitter.com/PDesireDev');
                          }),
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.instagram,
                            color: Colors.purpleAccent,
                          ),
                          onPressed: () {
                            openURL('https://www.instagram.com/pdesire_chan/');
                          }),
                    ],
                  ),
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "icons/anja.png"
                              )
                          )
                      )
                  ),
                  title: Text(
                    "Anja Greiß",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  subtitle: Text(
                      "Designberatung",
                    style: TextStyle(
                        color: theme.subtitleColor
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.twitter,
                            color: Colors.lightBlueAccent,
                          ),
                          onPressed: () {
                            openURL('https://twitter.com/anja_helena87');
                          }),
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.instagram,
                            color: Colors.purpleAccent,
                          ),
                          onPressed: () {
                            openURL('https://www.instagram.com/anja_helena87');
                          }),
                    ],
                  ),
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://avatars1.githubusercontent.com/u/30511480")
                          )
                      )
                  ),
                  title: Text(
                    "Seira Ren",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  subtitle: Text(
                      "Designberatung & Design",
                    style: TextStyle(
                        color: theme.subtitleColor
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://github.com/toptsundere');
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    "Herzliches Dankeschön an:",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold",
                        fontSize: 20
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://avatars1.githubusercontent.com/u/743306")
                          )
                      )
                  ),
                  title: Text(
                    "Andreas Schildbach",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://github.com/schildbach');
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://avatars2.githubusercontent.com/u/97706")
                          )
                      )
                  ),
                  title: Text(
                    "Felix Delattre",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://github.com/xamanu');
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://avatars2.githubusercontent.com/u/244947")
                          )
                      )
                  ),
                  title: Text(
                    "Torsten Grote & Transportr",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://github.com/grote');
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://avatars1.githubusercontent.com/u/14101776")
                          )
                      )
                  ),
                  title: Text(
                    "Flutter",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://github.com/flutter');
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://avatars0.githubusercontent.com/u/878437")
                          )
                      )
                  ),
                  title: Text(
                    "JetBrains",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://github.com/JetBrains');
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://assets.gitlab-static.net/uploads/-/system/project/avatar/7507693/ic_oeffi_stations_color_48dp.png")
                          )
                      )
                  ),
                  title: Text(
                    "Öffi",
                    style: TextStyle(
                        color: theme.titleColor,
                        fontFamily: "NunitoSansBold"
                    ),
                  ),
                  trailing: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            MaterialCommunityIcons.github_circle,
                            color: theme.iconColor,
                          ),
                          onPressed: () {
                            openURL('https://gitlab.com/oeffi/oeffi');
                          }),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}