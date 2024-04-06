import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:number_interpolation/number_interpolation.dart';

import '../../colors/ui_colors.dart';
import '../../providers.dart';

class MunypAppBar extends StatelessWidget {
  final String title;
  final void Function()? onCollapsedTap;

  const MunypAppBar({
    super.key,
    required this.title,
    required this.onCollapsedTap,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.platformBrightnessOf(context);
    final isDarkMode = brightness == Brightness.dark;

    return SliverAppBar(
      pinned: true,
      collapsedHeight: 64,
      toolbarHeight: 64,
      expandedHeight: 136,
      titleSpacing: 0,
      backgroundColor: UIColors.transparent,
      surfaceTintColor: UIColors.transparent,
      systemOverlayStyle:
          isDarkMode ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
      flexibleSpace: FlexibleSpace(
        title: title,
        onCollapsedTap: onCollapsedTap,
      ),
    );
  }
}

final collapsedTitleInterpolation = createInterpolation(
  inputRange: [0, 72],
  outputRange: [0, 1],
  extrapolate: ExtrapolateType.Clamp,
);
final expandedTitleInterpolation = createInterpolation(
  inputRange: [0, 36],
  outputRange: [1, 0],
  extrapolate: ExtrapolateType.Clamp,
);

class FlexibleSpace extends ConsumerWidget {
  final String title;
  final void Function()? onCollapsedTap;

  const FlexibleSpace({
    super.key,
    required this.title,
    required this.onCollapsedTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = UIDynamicColors(context);
    final brightness = MediaQuery.platformBrightnessOf(context);
    final isDarkMode = brightness == Brightness.dark;
    final padding = ref.watch(paddingProvider);
    final double horizontalPadding = max(max(padding.left, padding.right), 16);
    final settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;

    final collapsedTitleOpacity =
        collapsedTitleInterpolation(136 - settings.currentExtent + padding.top);
    final expandedTitleOpacity =
        expandedTitleInterpolation(136 - settings.currentExtent + padding.top);

    return GestureDetector(
      onTap: () {
        if (settings.isScrolledUnder ?? false) onCollapsedTap?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: (settings.isScrolledUnder ?? false)
              ? colors.gray.step3
              : colors.gray.step1,
        ),
        child: OverflowBox(
          minHeight: 64 + padding.top,
          maxHeight: 136 + padding.top,
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              SizedBox(height: padding.top),
              Container(
                height: 64,
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Row(
                  children: [
                    Flexible(
                      child: Opacity(
                        opacity: collapsedTitleOpacity,
                        child: Text(
                          title,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          style: TextStyle(
                            fontSize: 20,
                            color: isDarkMode ? UIColors.white : UIColors.black,
                            fontVariations: const [FontVariation('wght', 550)],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(
                  horizontalPadding,
                  24,
                  horizontalPadding,
                  12,
                ),
                alignment: Alignment.bottomLeft,
                child: Opacity(
                  opacity: expandedTitleOpacity,
                  child: Text(
                    title,
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    style: TextStyle(
                      fontSize: 30,
                      color: isDarkMode ? UIColors.white : UIColors.black,
                      height: 1.2,
                      fontVariations: const [FontVariation('wght', 600)],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
