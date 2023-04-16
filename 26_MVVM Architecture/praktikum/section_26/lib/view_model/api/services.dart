import 'package:dio/dio.dart';
import 'package:section_26/model/person.dart';


class Services {
  static Future<Orang?> getById(int id) async {
    var response = await Dio().get(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/$id");
    return Orang(
        id: response.data['id'],
        name: response.data['name'],
        phone: response.data['phone']);
  }

  static Future<Orang?> createUser(String name, String phone) async {
    var response = await Dio().post(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts",
        data: {'name': name, 'phone': phone});
    if (response.statusCode == 201) {
      return Orang(
          id: int.tryParse(response.data['id'].toString()) ?? 0,
          name: response.data['name'],
          phone: response.data['phone']);
    }
    return null;
  }

  static Future<TitleBodyTest?> putUser(
      String userId, String title, String body) async {
    var response = await Dio().put(
        "https://jsonplaceholder.typicode.com/posts/1",
        data: {'userId': int.parse(userId), 'title': title, 'body': body});
    if (response.statusCode == 200) {
      return TitleBodyTest(
          userId: response.data['userId'],
          id: int.tryParse(response.data['id'].toString()) ?? 0,
          title: response.data['title'],
          body: response.data['body']);
    }
    return null;
  }
}
