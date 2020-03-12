import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/assets/assets.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[SizedBox(height: 30), _buildBody()],
      ),
    );
  }

  Container _buildBody() {
    return Container(
        child: Column(
      children: <Widget>[
        _buildProfileImageContainer(),
        _buildLittleInfoContainer(),
        _buildAboutContainer(),
        _buildSocailMediaButtons()
      ],
    ));
  }

  Container _buildSocailMediaButtons() {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
          child: Column(
            children: <Widget>[
              Text("Socail Media", textAlign: TextAlign.center,style: TextStyling.whiteCupertino.subhead,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                    RawMaterialButton(
                      onPressed: () {
                        _launchURL('https://www.facebook.com/botra.seth1');
                      },
                      child: new Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: new CircleBorder(),
                      
                      padding: const EdgeInsets.all(5.0),
                    ),
                   RawMaterialButton(
                      onPressed: () {
                        _launchURL('https://www.linkedin.com/in/kan-chanproseth/');
                      },
                      child: new Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: new CircleBorder(),
                      padding: const EdgeInsets.all(5.0),
                    ), RawMaterialButton(
                      onPressed: () {
                        _launchURL('https://www.instagram.com/bothra_seth/');
                      },
                      child: new Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: new CircleBorder(),
                      padding: const EdgeInsets.all(5.0),
                    ),
                ],
              ),
            ],
          ),
    );
  }

  Container _buildProfileImageContainer() {
    return Container(
      width: 100,
      height: 100,
      child: ClipRRect(
        borderRadius: new BorderRadius.circular(50.0),
        child: Image.asset(ImageAssets.profileImage),
      ),
    );
  }

  Container _buildLittleInfoContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 18.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "Hello there!\n",style: TextStyle(color: Colors.white)),
          TextSpan(text: "My name is Kan Chanproseth.\n",style: TextStyle(color: Colors.white)),
          TextSpan(text: "_____________________________\n",style: TextStyle(color: Colors.white)),
          TextSpan(
              text: "iOS | Flutter | Android",
              style: TextStyle(color: Colors.white)),
        ]),
      ),
    );
  }

  Container _buildAboutContainer() {
    return Container(
      margin: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 18.0),
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 18.0),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Text("About\n",
              textAlign: TextAlign.center,style: TextStyle(color: Colors.white)),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text:
                      "Experienced iOS Developer with a demonstrated history of working in the computer software industry. Skilled in Mobile Application Development such as Android and iOS Development, Java and spring framework. Strong engineering professional with a Year 4 focused in Software Development at Norton University which is include iOS, Android, Java, C# and Other fundamental stuff in Software Development. I also achieved top student Honor award and certificate of appreciate from Norton University.",
                  style: TextStyle(color: Colors.white))
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.black,
              child: Text(
                "More",
                style: TextStyle(color: Colors.white)),
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )
        ],
      ),
    );
  }


  void _launchURL(String urlString) async {
    var url = urlString;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
