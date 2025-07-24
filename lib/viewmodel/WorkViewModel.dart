import 'package:flutter/foundation.dart';
import 'package:koprofile_flutter/model/WorkModel.dart';
import 'package:koprofile_flutter/service/work/WorkService.dart';

class WorkViewModel extends ChangeNotifier {
  final WorkService _workService = WorkService();
  List<Work> _workHistory = [];
  bool _isLoading = false;

  List<Work> get workHistory => _workHistory;
  bool get isLoading => _isLoading;

  Future<void> fetchWorkHistory() async {
    _isLoading = true;
    notifyListeners();

    try {
      List<Work>? workList = await _workService.getWorkHistory();
      if (workList != null) {
        _workHistory = workList;
        debugPrint(
          "Work history fetched successfully: ${_workHistory.length} items",
        );
      } else {
        _workHistory = [];
        debugPrint("No work history found.");
      }
    } catch (e) {
      debugPrint("Error fetching work history: $e");
      _workHistory = [];
      // Handle error appropriately, e.g., log it or show a message
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
