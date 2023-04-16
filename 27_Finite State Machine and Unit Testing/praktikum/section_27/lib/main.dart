import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_27/view/food_screen.dart';
import 'package:section_27/view_model/food_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodViewModel(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FoodScreen(),
      ),
    ),
  );
}
