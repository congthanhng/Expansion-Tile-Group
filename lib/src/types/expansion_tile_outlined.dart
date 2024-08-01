import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileOutlined extends ExpansionTileItem {
  ExpansionTileOutlined({
    super.key,
    required super.title,
    required super.children,
    super.onExpansionChanged,
    super.expansionKey,
    super.initiallyExpanded,
    super.tilePadding,
    super.collapsedIconColor,
    super.expandedCrossAxisAlignment,
    super.iconColor,
    super.textColor,
    super.subtitle,
    super.maintainState = false,
    super.controlAffinity,
    super.collapsedTextColor,
    super.collapsedBackgroundColor,
    super.trailing,
    super.leading,
    super.backgroundColor,
    super.decoration,
    super.border,
    super.themeData,
    super.boxShadow,
    super.clipBehavior,
    super.isHasTrailing,
    super.isEnableExpanded,
    super.isDefaultVerticalPadding,
    super.isHideSubtitleOnExpanded,
    super.trailingIcon,
    super.childrenPadding,
    super.expandedAlignment,
    BorderRadius? borderRadius,
    Color? collapsedBorderColor,
    Color? expendedBorderColor,
  }) : super(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          collapsedBorderColor: collapsedBorderColor ?? Colors.grey,
          expendedBorderColor: expendedBorderColor ?? Colors.blue,
          isHasBottomBorder: true,
          isHasLeftBorder: true,
          isHasRightBorder: true,
          isHasTopBorder: true,
        );
}
