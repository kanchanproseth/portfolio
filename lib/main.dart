import 'package:portfolio/app.dart';
import './appconfig/app_configuration.dart';
import 'package:flutter/material.dart';


void main(){
  // Configure Enviroment
  Constants.setEnvironment(Environment.DEV);

  // Configure App Flavor
  var configuredApp = AppConfig(
    appDisplayName: "App 1",
    appInternalId: 1,
    child: MyApp(),
  );

  // Run the app
  runApp(configuredApp);
}
