import 'dart:convert';

import 'package:task1/model/model.dart';
import 'package:http/http.dart' as http;
import 'package:task1/model/model2.dart';

List<Model> postList = [];

Future getPostApi() async {
  var response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  var data = jsonDecode(response.body);
  if (response.statusCode == 200) {
    for (var i in data) {
      postList.add(Model.fromJson(i));
    }
    return postList;
  } else {
    return print('no response');
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////
List<Model2> postList2 = [];

Future getPostApi2() async {
  var response2 =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  var data2 = jsonDecode(response2.body);
  if (response2.statusCode == 200) {
    for (var x in data2) {
      postList2.add(Model2.fromJson(x));
    }
    return postList2;
  } else {
    return print('no response');
  }
}
