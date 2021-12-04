import 'dart:convert';

import 'package:flutter_playground/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductModelDataSource {
  Future<List<ProductModel>> getProductRemoteData() async {
    http.Client client = http.Client();
    const String url =
        "http://makeup-api.herokuapp.com/api/v1/products.json?brand=nyx";

    try {
      var response = await client.get(Uri.parse(url));
      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return List<ProductModel>.from(
            data.map((product) => ProductModel.fromJson(product)));
      } else {
        return [];
      }
    } catch (e, s) {
      //throw Exception(e.toString());
      print("Error $e on $s");
    }
    return [];
  }
}
