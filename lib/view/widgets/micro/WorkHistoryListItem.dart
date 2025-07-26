import 'package:flutter/material.dart';
import 'package:koprofile_flutter/model/WorkModel.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkHistoryListItem extends StatelessWidget {
  final Work? work;
  final int? index;
  const WorkHistoryListItem(Work workItem, int ndx, {super.key})
    : work = workItem,
      index = ndx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 8.0,
        children: [
          Image.network(
            work?.workImageUrl ?? '',
            width: 64,
            height: 64,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              debugPrint('Error loading image: $error');
              return const Icon(Icons.work, size: 64);
            },
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    _launchURL(work?.workUrl ?? '');
                  },
                  child: Text(
                    work?.workCompany ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Text(
                  work?.workTitle ?? '',
                  style: const TextStyle(fontSize: 16.0),
                ),
                Text(
                  '${work?.workStartDateMillis} - ${work?.workEndDateMillis}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(top: 8),
                  child: Text(work?.workDescription ?? ''),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

_launchURL(String url) async {
  await launchUrl(Uri.parse(url));
}
