import 'dart:convert';
import 'package:intl/intl.dart';

class Work {
  final String workTitle;
  final String workCompany;
  final String workStartDateMillis;
  final String workEndDateMillis;
  final String workDescription;
  final String workLocation;
  final String workImageUrl;
  final String workUrl;

  Work({
    required this.workTitle,
    required this.workCompany,
    required this.workStartDateMillis,
    required this.workEndDateMillis,
    required this.workDescription,
    required this.workLocation,
    required this.workImageUrl,
    required this.workUrl,
  });

  @override
  String toString() {
    return 'Work{'
        'workTitle: $workTitle, '
        'workCompany: $workCompany, '
        'workStartDateMillis: $workStartDateMillis, '
        'workEndDateMillis: $workEndDateMillis, '
        'workDescription: $workDescription, '
        'workLocation: $workLocation, '
        'workImageUrl: $workImageUrl, '
        'workUrl: $workUrl'
        '}';
  }

  Work.fromJson(Map<String, dynamic> json)
    : workTitle = json['workTitle'] as String,
      workCompany = json['workCompany'] as String,
      workStartDateMillis = _formatDate(json['workStartDateMillis'] as int),
      workEndDateMillis = _formatDate(json['workEndDateMillis'] as int),
      workDescription = json['workDescription'] as String,
      workLocation = json['workLocation'] as String,
      workImageUrl = json['workImageUrl'] as String,
      workUrl = json['workUrl'] as String;

  static List<Work> fromJsonList(String jsonString) {
    final List<dynamic> jsonList = jsonDecode(jsonString);
    return jsonList.map((json) => Work.fromJson(json)).toList();
  }

  static String _formatDate(int dateMillis) {
    final DateTime now = DateTime(dateMillis);
    final DateFormat formatter = DateFormat('MMMM y');
    return formatter.format(now);
  }
}
