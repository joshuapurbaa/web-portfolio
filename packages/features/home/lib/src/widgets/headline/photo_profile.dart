import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(
        'assets/photo.png',
        package: 'home',
      ),
      fit: BoxFit.contain,
    );
  }
}
