import 'package:flutter/material.dart';

import '../constants/image_list.dart';
import '../components/image_tile.dart';

class ImageGridPage extends StatefulWidget {
  @override
  _ImageGridPageState createState() => _ImageGridPageState();
}

class _ImageGridPageState extends State<ImageGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Image Grid'),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: ImageTile(image: images[index]),
          );
        },
      ),
    );
  }
}
