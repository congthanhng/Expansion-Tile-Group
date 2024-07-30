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
    super.border,
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
    double? leafRadius,
    bool isReverseLeaf = false,
  }) : super(
          borderRadius: isReverseLeaf
              ? BorderRadius.only(
                  bottomRight: Radius.circular(leafRadius ?? 20),
                  topLeft: Radius.circular(leafRadius ?? 20))
              : BorderRadius.only(
                  bottomLeft: Radius.circular(leafRadius ?? 20),
                  topRight: Radius.circular(leafRadius ?? 20)),
          isHasBottomBorder: true,
          isHasLeftBorder: true,
          isHasRightBorder: true,
          isHasTopBorder: true,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: themeData ?? Theme.of(context).copyWith(),
      child: ExpansionTileCore(
        key: expansionKey,
        onExpansionChanged: onExpansionChanged,
        initiallyExpanded: initiallyExpanded,
        tilePadding: tilePadding,
        expandedAlignment: expandedAlignment ?? Alignment.topLeft,
        collapsedIconColor: collapsedIconColor,
        expandedCrossAxisAlignment:
            expandedCrossAxisAlignment ?? CrossAxisAlignment.start,
        iconColor: iconColor,
        title: title,
        textColor: textColor,
        subtitle: subtitle,
        maintainState: maintainState,
        controlAffinity: controlAffinity,
        collapsedTextColor: collapsedTextColor,
        collapsedBackgroundColor: collapsedBackgroundColor,
        childrenPadding: childrenPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        trailing: trailing,
        leading: leading,
        backgroundColor: backgroundColor,
        decoration: decoration,
        borderRadius: borderRadius,
        clipBehavior: clipBehavior,
        border: border,
        boxShadow: boxShadow,
        expendedBorderColor: expendedBorderColor,
        collapsedBorderColor: collapsedBorderColor,
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
    );
  }
}
