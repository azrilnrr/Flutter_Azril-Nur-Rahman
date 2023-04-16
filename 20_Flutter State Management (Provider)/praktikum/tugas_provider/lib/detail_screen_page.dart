import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String image;

  const DetailScreen({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Center(
        child: Image.asset(image),
      ),
    );
  }
}
