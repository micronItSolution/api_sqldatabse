import 'dart:convert';

import 'package:sapna_practical/model/event_model.dart';
// import 'package:sapna_practical/utils/app_common.dart';
//
// import 'network_utils.dart';
import 'package:http/http.dart' as http;

import '../utils/app_config.dart';

// Future<Future<http.Response>> getData({Map? request, int? page}) async {
//   return http.get(Uri.parse('$BASE_URL'+'events'));
//
//   // Iterable it = await (handleResponse(await buildHttpResponse('events', method: HttpMethodType.POST)));
//   // return it.map((e) => EventModel.fromJson(e)).toList();
// }

Future<EventModel> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('$BASE_URL'+'events'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return EventModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}