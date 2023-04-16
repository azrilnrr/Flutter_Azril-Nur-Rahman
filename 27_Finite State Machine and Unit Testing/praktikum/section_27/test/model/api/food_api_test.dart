import 'package:section_27/view_model/api/foods_api.dart';
import 'package:test/test.dart';

void main() {
  test('get all food return data', () async {
    var foods = await FoodApi.getFood();
    expect(foods.isNotEmpty, true);
  });
}
