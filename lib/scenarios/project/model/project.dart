
import 'package:flutter/material.dart';

class Project {
    String id;
    String iconPath;
    String projectName;
    String url;
    String projectDesc;
    String technology;

    Project({
       @required this.id,
       @required this.projectName,
       @required this.url,
       @required this.projectDesc,
       @required this.technology,
    });

    factory Project.fromJson(Map<String, dynamic> json) => Project(
        id: json["id"],
        projectName: json["projectName"],
        url: json["url"],
        projectDesc: json["projectDesc"],
        technology: json["technology"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "projectName": projectName,
        "url": url,
        "projectDesc": projectDesc,
        "technology": technology,
    };
}