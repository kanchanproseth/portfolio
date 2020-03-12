import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/assets/assets.dart';
import '../../card_stack_widget.dart';

class CertificateScreen extends StatefulWidget {
  @override
  _CertificateScreenState createState() => _CertificateScreenState();
}

List<String> images = [
  ImageAssets.image1,
  ImageAssets.image2,
  ImageAssets.image3,
  ImageAssets.image4,
];

class _CertificateScreenState extends State<CertificateScreen> {
  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    var currentPage2 = currentPage;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              CardScrollWidget(currentPage2, images),
              Positioned.fill(
                child: PageView.builder(
                  itemCount: images.length,
                  controller: controller,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Certificate Name',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Colors.white12,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Description",
                                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                                  ),
                                  Text(" : ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text("Basic course training",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))
                                ],
                              ),
                              SizedBox(height: 10,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[Text("Issued by",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),Text(": ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),Text("Korean Software HrD Center",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))  ],),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text("Issued Jul 2018",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                  Text(" • ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                  Text("No Expiry Date",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))
                                ],
                              )
                            ],
                          ),
                        ),
                      ))))
        ],
      ),
    );
  }
}
