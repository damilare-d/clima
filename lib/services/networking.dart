import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkHelper {

  NetworkHelper(this.url);
  final  String url;

  Future<dynamic> getData( ) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var body = response.body;

      return jsonDecode(body);
    } else {
      print(
          'fail to load data'
      );
    }
  }
}