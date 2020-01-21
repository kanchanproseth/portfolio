import 'package:flutter/material.dart';
import '../../utils/main_assets.dart';
import '../../utils/text_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({
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
                      onPressed: () {},
                      child: new Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: new CircleBorder(),
                      
                      padding: const EdgeInsets.all(5.0),
                    ),
                   RawMaterialButton(
                      onPressed: () {},
                      child: new Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      shape: new CircleBorder(),
                      padding: const EdgeInsets.all(5.0),
                    ), RawMaterialButton(
                      onPressed: () {},
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
        child: Image.asset(AssetsPath.profileImage),
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
              text: "Hello there!\n",
              style: TextStyling.whiteCupertino.headline),
          TextSpan(text: "My name is Kan Chanproseth.\n"),
          TextSpan(text: "_____________________________\n"),
          TextSpan(
              text: "iOS | Flutter | Android",
              style: TextStyling.whiteCupertino.subtitle),
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
              textAlign: TextAlign.center,
              style: TextStyling.whiteCupertino.headline),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text:
                      "Experienced iOS Developer with a demonstrated history of working in the computer software industry. Skilled in Mobile Application Development such as Android and iOS Development, Java and spring framework. Strong engineering professional with a Year 4 focused in Software Development at Norton University which is include iOS, Android, Java, C# and Other fundamental stuff in Software Development. I also achieved top student Honor award and certificate of appreciate from Norton University.",
                  style: TextStyle())
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
                style: TextStyling.whiteCupertino.display1,
              ),
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
}
