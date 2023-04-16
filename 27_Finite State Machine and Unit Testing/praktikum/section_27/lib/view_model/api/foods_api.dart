import 'package:dio/dio.dart';
import 'package:section_27/model/food_model.dart';

class FoodApi {
  static Future<List<Food>> getFood() async {
    final response = await Dio().get(
        "https://my-json-server.typicode.com/hadihammurabsi/flutter-webservice/foods");

    List<Food> foods = (response.data as List)
        .map((e) => Food(id: e['id'], name: e['name']))
        .toList();
    return foods;
  }
}
