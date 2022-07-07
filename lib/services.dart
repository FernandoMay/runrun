import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:runrun/models.dart';

Future<List<Result>> fetchEmployees() async {
  Uri employeesListAPIUrl = Uri.https(
      'ec2-54-160-96-116.compute-1.amazonaws.com',
      '/Innows/getListaTerminales?PaisID=28&Buscar=*',
      {'q': '{http}'});
  final response = await http.get(employeesListAPIUrl);

  if (response.statusCode == 200) {
    Response jsonResponse = responseFromJson(response.body);
    return jsonResponse.result;
  } else {
    throw Exception('Failed to load data from API ${response.statusCode}');
  }
}
