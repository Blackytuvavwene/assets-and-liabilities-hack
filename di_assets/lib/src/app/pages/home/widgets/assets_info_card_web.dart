import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssetsCardInfoWeb extends HookConsumerWidget {
  const AssetsCardInfoWeb({
    Key? key,
    this.title,
    this.subtitle,
    this.imageUrl,
    this.imageWidth,
    this.imageHeight,
    this.imageRadius,
    this.backgroundColor,
  }) : super(key: key);
  final String? title;
  final String? subtitle;
  final String? imageUrl;
  final double? imageWidth;
  final double? imageHeight;
  final double? imageRadius;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [],
          )
        ],
      ),
    );
  }
}
