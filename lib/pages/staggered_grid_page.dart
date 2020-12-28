import 'package:flutter/material.dart';
import 'package:flutter_gridview/components/image_tile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../constants/image_list.dart';

class StaggeredGridPage extends StatefulWidget {
  @override
  _StaggeredGridPageState createState() => _StaggeredGridPageState();
}

class _StaggeredGridPageState extends State<StaggeredGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Staggered Grid'),
        ),
      ),
      body: Container(
        child: StaggeredGridView.countBuilder(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(12.0),
          crossAxisCount: 4,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) =>
              ImageTile(image: images[index]),
          staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        ),
      ),
    );
  }
}
