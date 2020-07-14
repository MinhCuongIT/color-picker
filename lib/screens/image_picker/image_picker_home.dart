import 'selector/image_selector.dart';
import 'package:flutter/material.dart';

class ImagePickerHome extends StatefulWidget {
  ImagePickerHome({Key key}) : super(key: key);

  @override
  _ImagePickerHomeState createState() => _ImagePickerHomeState();
}

class _ImagePickerHomeState extends State<ImagePickerHome>
    with AutomaticKeepAliveClientMixin {
  Color color = Colors.black;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(
      builder: (context, snapshot) {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          constraints: snapshot,
          child: SafeArea(child: ImageSelector()),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}