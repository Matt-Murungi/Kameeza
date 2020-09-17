import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imageurl;

  ImageContainer({this.imageurl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: ExactAssetImage(imageurl),
        fit: BoxFit.cover,
      )),
    );
  }
}
