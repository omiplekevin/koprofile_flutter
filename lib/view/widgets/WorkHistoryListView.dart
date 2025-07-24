import 'package:flutter/material.dart';
import 'package:koprofile_flutter/model/WorkModel.dart';
import 'package:koprofile_flutter/view/widgets/micro/WorkHistoryListItem.dart';

class WorkHistoryListView extends StatelessWidget {
  final List<Work> workHistoryList;

  const WorkHistoryListView(List<Work> workHistory, {super.key})
    : workHistoryList = workHistory;

  @override
  Widget build(BuildContext context) {
    debugPrint("WorkHistoryListView: ${workHistoryList.length} items");
    return ListView.builder(
      itemBuilder: (context, index) {
        final work = workHistoryList[index];
        return WorkHistoryListItem(work);
      },
      itemCount: workHistoryList.length,
    );
  }
}
