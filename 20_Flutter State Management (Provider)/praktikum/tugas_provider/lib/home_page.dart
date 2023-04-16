import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_provider/detail_screen_page.dart';
import 'package:tugas_provider/image_provider.dart' as img;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageProvider = Provider.of<img.ImageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Provider'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 2,
          children: List.generate(imageProvider.images.length, (index) {
            return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 1000,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Detail Image?'),
                              content: Text(
                                  'Apakah kamu ingin melihat dengan lebih jelas?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: const Text('Tidak'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                  child: const Text('Iya'),
                                ),
                              ],
                            ),
                          ).then(
                            (value) {
                              if (value == true) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                        image: imageProvider.images[index]),
                                  ),
                                );
                              }
                            },
                          );
                        },
                        child: Image.asset(
                          imageProvider.images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              },
              child: Image.asset(
                imageProvider.images[index],
                fit: BoxFit.cover,
              ),
            );
          }),
        ),
      ),
    );
  }
}
