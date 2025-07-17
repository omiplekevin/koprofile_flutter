import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExperienceCell extends StatelessWidget {
  final String experienceTitle;
  final List<String> experienceValue;

  const ExperienceCell({
    super.key,
    required this.experienceTitle,
    required this.experienceValue,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                experienceValue.join(", "),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),
              ),
            )
          else
            Text(
              experienceValue[0],
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w900,
                fontSize: 14,
              ),
            ),
        ],
      ),
    );
  }
}
