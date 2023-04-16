import 'package:assets_dbs_navigation/full_image_page.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> images = [
    'assets/images1.jpg',
    'assets/images2.jpg',
    'assets/images3.jpg',
    'assets/images4.jpg',
    'assets/images5.jpg',
    'assets/images6.jpg',
    'assets/images7.jpg',
    'assets/images8.jpg',
    'assets/images9.jpg',
    'assets/images10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: gridViewPicture(context),
    );
  }

  GridView gridViewPicture(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: images
          .map(
            (image) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => ImageBottomSheet(image: image),
                );
              },
              child: Card(
                child: Image.asset(image),
              ),
            ),
          )
          .toList(),
    );
  }
}

class ImageBottomSheet extends StatelessWidget {
  final String image;
  const ImageBottomSheet({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Open Image?'),
              content: Text('Do you want to open this image?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('Yes'),
                ),
              ],
            ),
          ).then(
            (value) {
              if (value == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullImagePage(image: image),
                  ),
                );
              }
            },
          );
        },
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
