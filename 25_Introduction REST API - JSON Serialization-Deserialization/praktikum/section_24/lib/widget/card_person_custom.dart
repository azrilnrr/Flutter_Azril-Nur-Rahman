import 'package:flutter/material.dart';
import 'package:section_24/model/person.dart';




class CardCustomPerson extends StatelessWidget {
  final Orang person;

  const CardCustomPerson({Key? key, required this.person}) : super(key: key);

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
              SizedBox(width: 220, child: Text(': ${person.id}'))
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
              SizedBox(width: 220, child: Text(': ${person.name}'))
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
              SizedBox(width: 220, child: Text(': ${person.phone}'))
            ],
          )
        ],
      ),
    );
  }
}
