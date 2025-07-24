import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:koprofile_flutter/model/WorkModel.dart';

class WorkService {
  Future<List<Work>?> getWorkHistory() async {
    // Return a list of Work objects
    final String jsonString = await rootBundle.loadString(
      "assets/json/work_list.json",
    );
    // Parse JSON (expecting a List<dynamic>)
    final List<dynamic> jsonData = jsonDecode(jsonString);
    // Map JSON objects to WorkItem instances
    return jsonData.map((json) => Work.fromJson(json)).toList();
  }
}
