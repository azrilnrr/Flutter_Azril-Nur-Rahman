Future<List<int>> multiplyListData(List<int> data, int multiplier) async {
  List<int> multipliedData = [];
  for (int item in data) {
    multipliedData.add(item * multiplier);
    await Future.delayed(Duration(seconds: 1));
  }
  return multipliedData;
}

void main(List<String> args) async {
  List<int> data = [60, 20, 30, 40, 50];
  int multiplier = 2;

  List<int> result = await multiplyListData(data, multiplier);
  print(result);
}
