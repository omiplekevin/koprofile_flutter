import 'package:flutter/material.dart';
import 'package:koprofile_flutter/model/WorkModel.dart';

class WorkHistoryListItem extends StatelessWidget {
  final Work? work;
  const WorkHistoryListItem(Work workItem, {super.key}) : work = workItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  work?.workTitle ?? '',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(work?.workCompany ?? ''),
                Text(
                  '${work?.workStartDateMillis} - ${work?.workEndDateMillis}',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
