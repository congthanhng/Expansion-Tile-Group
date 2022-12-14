import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class ExpansionTileBorderItem extends ExpansionTileItem {
  ExpansionTileBorderItem({
    Key? key,
    required Widget title,
    required List<Widget> children,
    ValueChanged<bool>? onExpansionChanged,
    GlobalKey<ExpansionTileCustomState>? expansionKey,
    bool initiallyExpanded = false,
    EdgeInsetsGeometry? tilePadding,
    Alignment? expandedAlignment,
    Color? collapsedIconColor,
    CrossAxisAlignment? expandedCrossAxisAlignment,
    Color? iconColor,
    Color? textColor,
    Widget? subtitle,
    bool maintainState = false,
    ListTileControlAffinity? controlAffinity,
    Color? collapsedTextColor,
    Color? collapsedBackgroundColor,
    EdgeInsetsGeometry? childrenPadding,
    Widget? trailing,
    Widget? leading,
    Color? backgroundColor,
    Decoration? decoration,
    BorderRadiusGeometry? borderRadius,
    BoxBorder? border,
    ThemeData? themeData,
    List<BoxShadow>? boxShadow,
    Clip? clipBehavior,
    Color? collapsedBorderColor,
    Color? expendedBorderColor,
    bool? isHasTopBorder,
    bool? isHasBottomBorder,
    bool? isHasLeftBorder,
    bool? isHasRightBorder,
  }) : super(
          key: key,
          title: title,
          children: children,
          decoration: decoration,
          border: border,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          backgroundColor: backgroundColor,
          childrenPadding: childrenPadding ??
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          collapsedBackgroundColor: collapsedBackgroundColor,
          collapsedIconColor: collapsedIconColor,
          collapsedTextColor: collapsedTextColor,
          controlAffinity: controlAffinity,
          expandedAlignment: expandedAlignment ?? Alignment.topLeft,
          expandedCrossAxisAlignment: expandedCrossAxisAlignment,
          expansionKey: expansionKey,
          iconColor: iconColor,
          initiallyExpanded: initiallyExpanded,
          leading: leading,
          maintainState: maintainState,
          onExpansionChanged: onExpansionChanged,
          subtitle: subtitle,
          textColor: textColor,
          themeData: themeData,
          tilePadding: tilePadding,
          trailing: trailing,
          boxShadow: boxShadow,
          clipBehavior: clipBehavior,
          collapsedBorderColor: collapsedBorderColor ?? Colors.grey,
          expendedBorderColor: expendedBorderColor ?? Colors.blue,
          isHasBottomBorder: isHasBottomBorder = true,
          isHasLeftBorder: isHasLeftBorder = true,
          isHasRightBorder: isHasRightBorder = true,
          isHasTopBorder: isHasTopBorder = true,
        );
}
