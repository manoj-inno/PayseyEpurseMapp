import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/theme/app_themes.dart';

class ExtractedDetailsShimmer extends StatelessWidget {
  final ThemeData theme;
  final bool isDark;

  const ExtractedDetailsShimmer({
    super.key,
    required this.theme,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Shimmer.fromColors(
        baseColor:
            isDark ? AppColors.shimmerBaseDark : AppColors.shimmerBaseLight2,
        highlightColor: isDark
            ? AppColors.shimmerHighlightDark
            : AppColors.shimmerHighlightLight,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
