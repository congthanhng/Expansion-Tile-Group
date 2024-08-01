import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileCard extends ExpansionTileItem {
  ExpansionTileCard({
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
    this.elevation,
  }) : super(
          border: const Border(),
          isHasBottomBorder: false,
          isHasTopBorder: false,
          isHasRightBorder: false,
          isHasLeftBorder: false,
          borderRadius: BorderRadius.circular(12),
        );

  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: elevation,
      clipBehavior: Clip.hardEdge,
      child: Theme(
        data: themeData ?? Theme.of(context).copyWith(),
        child: ExpansionTileCore(
          key: expansionKey,
          iconColor: iconColor,
          collapsedIconColor: collapsedIconColor,
          textColor: textColor,
          collapsedTextColor: collapsedTextColor,
          collapsedBackgroundColor: collapsedBackgroundColor,
          backgroundColor: backgroundColor,
          expendedBorderColor: expendedBorderColor,
          collapsedBorderColor: collapsedBorderColor,
          onExpansionChanged: onExpansionChanged,
          initiallyExpanded: initiallyExpanded,
          tilePadding: tilePadding,
          expandedAlignment: expandedAlignment ?? Alignment.topLeft,
          expandedCrossAxisAlignment:
              expandedCrossAxisAlignment ?? CrossAxisAlignment.start,
          title: title,
          subtitle: subtitle,
          maintainState: maintainState,
          controlAffinity: controlAffinity,
          childrenPadding: childrenPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          trailing: trailing,
          leading: leading,
          decoration: decoration,
          borderRadius: borderRadius,
          clipBehavior: clipBehavior,
          border: border,
          boxShadow: boxShadow,
          isHasBottomBorder: isHasBottomBorder ?? true,
          isHasLeftBorder: isHasLeftBorder ?? false,
          isHasRightBorder: isHasRightBorder ?? false,
          isHasTopBorder: isHasTopBorder ?? true,
          isHasTrailing: isHasTrailing ?? true,
          isEnableExpanded: isEnableExpanded ?? true,
          isDefaultVerticalPadding: isDefaultVerticalPadding ?? true,
          isHideSubtitleOnExpanded: isHideSubtitleOnExpanded ?? false,
          trailingIcon: trailingIcon,
          children: children ?? [],
        ),
      ),
    );
  }
}
