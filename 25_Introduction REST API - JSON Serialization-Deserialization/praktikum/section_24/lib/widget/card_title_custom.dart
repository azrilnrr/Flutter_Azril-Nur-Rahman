import 'package:flutter/material.dart';
import 'package:section_24/model/person.dart';

class CardCustomTitleBodyTest extends StatelessWidget {
  final TitleBodyTest titleBodyTest;

  const CardCustomTitleBodyTest({Key? key, required this.titleBodyTest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.amber[200]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('ID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${titleBodyTest.userId}'))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('USR ID',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${titleBodyTest.userId}'))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${titleBodyTest.title}'))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('Phone',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${titleBodyTest.body}'))
            ],
          )
        ],
      ),
    );
  }
}
