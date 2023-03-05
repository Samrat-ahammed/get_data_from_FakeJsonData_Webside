import 'dart:convert';
import 'dart:developer';

import 'package:api/Model.dart';
import 'package:http/http.dart';

class NetWorkUtils {
  Future<dynamic> getMethod() async {
    try {
      final Response response =
          await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      log(response.body);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        log('status code ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<List<Model>> fetchAlbum() async {
    final response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List result = json.decode(response.body);
      return result.map((e) => Model.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
