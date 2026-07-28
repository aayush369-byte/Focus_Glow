import 'package:flutter/material.dart';

import '../../../data/statistics_data.dart';

//this is category legend which is used in the statistics screen to show the category legend

class CategoryLegend extends StatelessWidget {
  const CategoryLegend({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: StatisticsData.categories.map((category) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              Container(
                width: 7,
                height: 7,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: category.color,
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  category.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: colorScheme.onSurfaceVariant,
                    fontSize: 9,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                '${category.percentage.toInt()}%',
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
