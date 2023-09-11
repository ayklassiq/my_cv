import 'package:flutter/material.dart';
import 'package:my_cv_app/views/cv_view.dart';

import 'models/cv_dart.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // CV cv = CV();
  // CVData cvData = CVData();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:CVView(cvData: CVData(),),
    );
  }
}

