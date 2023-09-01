import 'package:flutter/material.dart';
import '../extensions/text_styles.dart';
import '../extensions/validation_extensions.dart';
import 'package:intl/intl.dart';
import '../main.dart';
import '../model/event_model.dart';
import 'app_config.dart';
import 'app_constants.dart';
import 'app_images.dart';

enum HttpResponseType { FULL_RESPONSE, JSON, BODY_BYTES, STRING }

enum HttpMethodType { GET, POST, DELETE, PUT }

String formatDate(String? dateTime, {String format = DATE_FORMAT_1}) {
  return DateFormat(format).format(DateTime.parse(dateTime.validateString()));
}

String getDate(StartDateDetails startDateDetails) {
  return "${startDateDetails.day.validateString() + " " + "${DateFormat('MMMM').format(
        DateTime(
          0,
          int.parse(startDateDetails.month.toString()),
        ),
      )}" + " " + " " + startDateDetails.year.validateString()}";
}

String getDateOnList(StartDateDetails start, StartDateDetails end) {
  return "${start.day}" +
      " " +
      "${DateFormat('MMMM').format(
        DateTime(
          0,
          int.parse(start.month.toString()),
        ),
      )}" +
      " To " +
      "${end.day}" +
      " " +
      "${DateFormat('MMMM').format(
        DateTime(
          0,
          int.parse(end.month.toString()),
        ),
      )}";
}
