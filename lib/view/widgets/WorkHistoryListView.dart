import 'package:flutter/material.dart';
import 'package:koprofile_flutter/model/WorkModel.dart';
import 'package:koprofile_flutter/view/widgets/micro/WorkHistoryListItem.dart';

class WorkHistoryListView extends StatelessWidget {
  final List<Work> workHistoryList;

  const WorkHistoryListView(List<Work> workHistory, {super.key})
    : workHistoryList = workHistory;

  @override
  Widget build(BuildContext context) {
    List<Widget> workWidgets = List.generate(workHistoryList.length, (index) {
      return WorkHistoryListItem(workHistoryList[index], index);
    });
    workWidgets.insert(
      0,
      Padding(
        padding: EdgeInsetsGeometry.all(16.0),
        child: Text(
          "These companies helped me grow as a developer.",
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
        ),
      ),
    );

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: workWidgets,
      ),
    );
  }
}

// return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Container(
//           padding: EdgeInsets.fromLTRB(16, 16, 16, 32),
//           child: Text(
//             "These companies helped me grow as a developer.",
//             style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
//           ),
//         ),
//         Expanded(
//           child: ListView.separated(
//             itemCount: workHistoryList.length,
//             itemBuilder: (context, index) {
//               final work = workHistoryList[index];
//               return WorkHistoryListItem(work, index);
//             },
//             separatorBuilder: (context, index) => const Divider(
//               color: Color.fromARGB(255, 222, 222, 222),
//               height: 1.0,
//               thickness: 1.0,
//               indent: 16.0,
//               endIndent: 16.0,
//             ),
//           ),
//         ),
//       ],
//     );
