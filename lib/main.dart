import 'package:flutter/material.dart';

import 'pages/image_grid_page.dart';
import 'pages/staggered_grid_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView and Staggered Grid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageGridPage(),
      // home: StaggeredGridPage(),
    );
  }
}

