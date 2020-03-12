import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/scenarios/certificate/certificate_screen.dart';
import 'package:portfolio/scenarios/profile/profile_screen.dart';
import 'package:portfolio/scenarios/project/project_screen.dart';
import '../../utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  final _kArrowColor = Colors.black.withOpacity(0.8);
  var titleItems = ["Project", "Certificate", "Profile"];
  var selectedPageTitle;

  List<BubbleBottomBarItem> bottomBarItems = [
    BubbleBottomBarItem(
        title: Text("Project", style: TextStyling.blackCupertino.subtitle),
        icon: Icon(FontAwesomeIcons.suitcase, color: Colors.white),
        activeIcon: Icon(FontAwesomeIcons.suitcase, color: Colors.black),
        backgroundColor: Colors.white),
    BubbleBottomBarItem(
        title: Text("Certificate", style: TextStyling.blackCupertino.subtitle),
        icon: Icon(FontAwesomeIcons.certificate, color: Colors.white),
        activeIcon: Icon(FontAwesomeIcons.certificate, color: Colors.black),
        backgroundColor: Colors.white),
    BubbleBottomBarItem(
        title: Text("Profile", style: TextStyling.blackCupertino.subtitle),
        icon: Icon(FontAwesomeIcons.user, color: Colors.white),
        activeIcon: Icon(FontAwesomeIcons.user, color: Colors.black),
        backgroundColor: Colors.white)
  ];
  
  final _controller = new PageController();

  final List<Widget> _pages = <Widget>[
  ProjectScreen(),
    CertificateScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = 0;
    selectedPageTitle = titleItems[0];
  }

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
      _controller.animateToPage(
                    index,
                    duration: _kDuration,
                    curve: _kCurve,
                  );
      selectedPageTitle = titleItems[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          iconSize: 30,
          icon: Icon(
            FontAwesomeIcons.mendeley,
            color: Colors.white,
          ),
        ),
        title: Text(selectedPageTitle),
      ),
      backgroundColor: Colors.black,
      body: PageView.builder(
        physics: new NeverScrollableScrollPhysics(),
        controller: _controller,
        itemBuilder: (BuildContext context, int index) {
          return _pages[index % _pages.length];
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 12.0),
        child: _buildBottomNavigationBar(),
      ),
    );
  }

  BubbleBottomBar _buildBottomNavigationBar() {
    return BubbleBottomBar(
      backgroundColor: Colors.transparent,
      opacity: 1,
      elevation: 0,
      currentIndex: _currentIndex,
      onTap: changePage,
      items: bottomBarItems,
    );
  }
}