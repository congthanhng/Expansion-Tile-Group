import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileCard extends ExpansionTileItem {
  const ExpansionTileCard({
    super.key,
    required super.title,
    required super.children,
    super.onExpansionChanged,
    super.expansionKey,
    super.initiallyExpanded,
    super.tilePadding,
    super.expandedAlignment,
    super.collapsedIconColor,
    super.expandedCrossAxisAlignment,
    super.iconColor,
    super.textColor,
    super.subtitle,
    super.maintainState = false,
    super.controlAffinity,
    super.collapsedTextColor,
    super.collapsedBackgroundColor,
    super.childrenPadding,
    super.trailing,
    super.leading,
    super.backgroundColor,
    super.decoration,
    super.themeData,
    super.boxShadow,
    super.clipBehavior,
    super.collapsedBorderColor,
    super.expendedBorderColor,
    super.isHasTrailing,
    super.isEnableExpanded,
    super.isDefaultVerticalPadding,
    super.isHideSubtitleOnExpanded,
    super.trailingIcon,
    this.elevation = 3.0,
    super.controller,
    super.index,
  }) : super(
          border: const Border(),
          isHasBottomBorder: false,
          isHasTopBorder: false,
          isHasRightBorder: false,
          isHasLeftBorder: false,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        );

  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.zero,
        elevation: elevation,
        clipBehavior: Clip.antiAlias,
        child: super.build(context));
  }
}
