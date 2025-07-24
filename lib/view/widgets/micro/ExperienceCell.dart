import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExperienceCell extends StatelessWidget {
  final String experienceTitle;
  final List<String> experienceValue;
  final int index;

  const ExperienceCell({
    super.key,
    required this.experienceTitle,
    required this.experienceValue,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final double textSize = 20;
    return Expanded(
      child: Column(
        crossAxisAlignment: index % 2 == 0
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Text(
            experienceTitle.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          if (experienceTitle == "Languages")
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ...experienceValue.map(
                  (v) => Padding(
                    padding: EdgeInsetsGeometry.all(4),
                    child: Image.asset(v, width: 32, height: 32),
                  ),
                ),
              ],
            )
          else if (experienceTitle == "Worked with" ||
              experienceTitle == "Frameworks")
            InkWell(
              onTap: () {
                if (kDebugMode) {
                  debugPrint("Clicked ${experienceValue.join(", ")}");
                }
              },
              child: Text(
                textAlign: index % 2 == 0 ? TextAlign.end : TextAlign.start,
                experienceValue.join(", "),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: textSize,
                ),
              ),
            )
          else
            Text(
              experienceValue[0],
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: textSize,
              ),
            ),
        ],
      ),
    );
  }
}
