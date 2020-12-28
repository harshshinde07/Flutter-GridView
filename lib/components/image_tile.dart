import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String image;

  const ImageTile({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }
}
