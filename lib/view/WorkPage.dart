import 'package:flutter/material.dart';
import 'package:koprofile_flutter/view/widgets/WorkHistoryListView.dart';
import 'package:koprofile_flutter/viewmodel/WorkViewModel.dart';
import 'package:provider/provider.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<WorkViewModel>(context);

    debugPrint("WorkPage: isLoading = ${viewModel.isLoading}");

    return Padding(
      padding: EdgeInsetsGeometry.all(16.0),
      child: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : WorkHistoryListView(viewModel.workHistory),
    );
  }
}
