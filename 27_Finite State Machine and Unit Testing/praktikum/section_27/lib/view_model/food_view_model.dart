import 'package:flutter/material.dart';
import 'package:section_27/model/food_model.dart';
import 'package:section_27/view_model/api/foods_api.dart';

enum FoodViewState { none, loading, error }

class FoodViewModel with ChangeNotifier {
  FoodViewState _state = FoodViewState.none;
  FoodViewState get state => _state;

  List<Food> _foods = [];
  List<Food> get foods => _foods;

  changeState(FoodViewState f) {
    _state = f;
    notifyListeners();
  }

  getAllFood() async {
    changeState(FoodViewState.loading);

    try {
      final makanan = await FoodApi.getFood();
      _foods = makanan;
      notifyListeners();
      changeState(FoodViewState.none);
    } catch (e) {
      changeState(FoodViewState.error);
    }
  }
}
