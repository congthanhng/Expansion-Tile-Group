// Originally based on ExpansionTile from Flutter.

import 'package:expansion_tile_group/src/expansion_tile_custom.dart';
import 'package:flutter/material.dart';

class ExpansionTileItem extends StatelessWidget {
  const ExpansionTileItem(
      {Key? key,
      required this.title,
      required this.children,
      this.expansionKey,
      this.onExpansionChanged,
      this.tilePadding,
      this.initiallyExpanded = false,
      this.backgroundColor,
      this.textColor,
      this.subtitle,
      this.maintainState = false,
      this.iconColor,
      this.expandedCrossAxisAlignment,
      this.expandedAlignment,
      this.controlAffinity,
      this.collapsedTextColor,
      this.collapsedIconColor,
      this.collapsedBackgroundColor,
      this.childrenPadding,
      this.trailing,
      this.leading,
      this.themeData,
      this.decoration,
      this.borderRadius,
      this.border})
      : super(key: key);

  /// The primary content of the list item.
  ///
  /// Typically a [Text] widget.
  final Widget title;

  /// The widgets that are displayed when the tile expands.
  ///
  /// Typically [ListTile] widgets.
  final List<Widget>? children;

  /// Called when the tile expands or collapses.
  ///
  /// When the tile starts expanding, this function is called with the value
  /// true. When the tile starts collapsing, this function is called with
  /// the value false.
  final ValueChanged<bool>? onExpansionChanged;
  final GlobalKey<ExpansionTileCustomState>? expansionKey;

  /// Specifies if the list tile is initially expanded (true) or collapsed (false, the default).
  final bool initiallyExpanded;

  /// Specifies padding for the [ListTile].
  ///
  /// Analogous to [ListTile.contentPadding], this property defines the insets for
  /// the [leading], [title], [subtitle] and [trailing] widgets. It does not inset
  /// the expanded [children] widgets.
  ///
  /// If this property is null then [ExpansionTileThemeData.tilePadding] is used. If that
  /// is also null then the tile's padding is `EdgeInsets.symmetric(horizontal: 16.0)`.
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final EdgeInsetsGeometry? tilePadding;

  /// Specifies the alignment of [children], which are arranged in a column when
  /// the tile is expanded.
  ///
  /// The internals of the expanded tile make use of a [Column] widget for
  /// [children], and [Align] widget to align the column. The `expandedAlignment`
  /// parameter is passed directly into the [Align].
  ///
  /// Modifying this property controls the alignment of the column within the
  /// expanded tile, not the alignment of [children] widgets within the column.
  /// To align each child within [children], see [expandedCrossAxisAlignment].
  ///
  /// The width of the column is the width of the widest child widget in [children].
  ///
  /// If this property is null then [ExpansionTileThemeData.expandedAlignment]is used. If that
  /// is also null then the value of `expandedAlignment` is [Alignment.center].
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final Alignment? expandedAlignment;

  /// The icon color of tile's expansion arrow icon when the sublist is collapsed.
  ///
  /// Used to override to the [ListTileThemeData.iconColor].
  final Color? collapsedIconColor;

  /// Specifies the alignment of each child within [children] when the tile is expanded.
  ///
  /// The internals of the expanded tile make use of a [Column] widget for
  /// [children], and the `crossAxisAlignment` parameter is passed directly into the [Column].
  ///
  /// Modifying this property controls the cross axis alignment of each child
  /// within its [Column]. Note that the width of the [Column] that houses
  /// [children] will be the same as the widest child widget in [children]. It is
  /// not necessarily the width of [Column] is equal to the width of expanded tile.
  ///
  /// To align the [Column] along the expanded tile, use the [expandedAlignment] property
  /// instead.
  ///
  /// When the value is null, the value of `expandedCrossAxisAlignment` is [CrossAxisAlignment.center].
  final CrossAxisAlignment? expandedCrossAxisAlignment;

  /// The icon color of tile's expansion arrow icon when the sublist is expanded.
  ///
  /// Used to override to the [ListTileThemeData.iconColor].
  ///
  /// If this property is null then [ExpansionTileThemeData.iconColor] is used. If that
  /// is also null then the value of [ListTileThemeData.iconColor] is used.
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final Color? iconColor;

  /// The color of the tile's titles when the sublist is expanded.
  ///
  /// Used to override to the [ListTileThemeData.textColor].
  ///
  /// If this property is null then [ExpansionTileThemeData.textColor] is used. If that
  /// is also null then the value of [ListTileThemeData.textColor] is used.
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final Color? textColor;

  /// Additional content displayed below the title.
  ///
  /// Typically a [Text] widget.
  final Widget? subtitle;

  /// Specifies whether the state of the children is maintained when the tile expands and collapses.
  ///
  /// When true, the children are kept in the tree while the tile is collapsed.
  /// When false (default), the children are removed from the tree when the tile is
  /// collapsed and recreated upon expansion.
  final bool maintainState;

  /// Typically used to force the expansion arrow icon to the tile's leading or trailing edge.
  ///
  /// By default, the value of `controlAffinity` is [ListTileControlAffinity.platform],
  /// which means that the expansion arrow icon will appear on the tile's trailing edge.
  final ListTileControlAffinity? controlAffinity;

  /// The color of the tile's titles when the sublist is collapsed.
  ///
  /// Used to override to the [ListTileThemeData.textColor].
  ///
  /// If this property is null then [ExpansionTileThemeData.collapsedTextColor] is used. If that
  /// is also null then the value of [ListTileThemeData.textColor] is used.
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final Color? collapsedTextColor;

  /// When not null, defines the background color of tile when the sublist is collapsed.
  ///
  /// If this property is null then [ExpansionTileThemeData.collapsedBackgroundColor] is used.
  /// If that is also null then Colors.transparent is used.
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final Color? collapsedBackgroundColor;

  /// Specifies padding for [children].
  ///
  /// If this property is null then [ExpansionTileThemeData.childrenPadding] is used. If that
  /// is also null then the value of `childrenPadding` is [EdgeInsets.zero].
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final EdgeInsetsGeometry? childrenPadding;

  /// A widget to display after the title.
  ///
  /// Note that depending on the value of [controlAffinity], the [trailing] widget
  /// may replace the rotating expansion arrow icon.
  final Widget? trailing;

  /// A widget to display before the title.
  ///
  /// Typically a [CircleAvatar] widget.
  ///
  /// Note that depending on the value of [controlAffinity], the [leading] widget
  /// may replace the rotating expansion arrow icon.
  final Widget? leading;

  /// The color to display behind the sublist when expanded.
  ///
  /// If this property is null then [ExpansionTileThemeData.backgroundColor] is used. If that
  /// is also null then Colors.transparent is used.
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final Color? backgroundColor;

  ///Specifies the color and typography values for descendant widgets.
  final ThemeData? themeData;

  ///The decoration to paint behind the child.
  /// Use the color property to specify a simple solid color.
  /// The child is not clipped to the decoration. To clip a child to the shape of a particular ShapeDecoration, consider using a ClipPath widget.
  final Decoration? decoration;

  /// If non-null, the corners of this box are rounded by this [BorderRadius].
  ///
  /// Applies only to boxes with rectangular shapes; ignored if [shape] is not
  /// [BoxShape.rectangle].
  ///
  /// {@macro flutter.painting.BoxDecoration.clip}
  final BorderRadiusGeometry? borderRadius;

  /// A border to draw above the background [color], [gradient], or [image].
  ///
  /// Follows the [shape] and [borderRadius].
  ///
  /// Use [Border] objects to describe borders that do not depend on the reading
  /// direction.
  ///
  /// Use [BoxBorder] objects to describe borders that should flip their left
  /// and right edges based on whether the text is being read left-to-right or
  /// right-to-left.
  final BoxBorder? border;

  ExpansionTileItem copyWith(
      {Key? key,
      Widget? title,
      List<Widget>? children,
      ValueChanged<bool>? onExpansionChanged,
      GlobalKey<ExpansionTileCustomState>? expansionKey,
      bool? initiallyExpanded,
      EdgeInsetsGeometry? tilePadding,
      Alignment? expandedAlignment,
      Color? collapsedIconColor,
      CrossAxisAlignment? expandedCrossAxisAlignment,
      Color? iconColor,
      Color? textColor,
      Widget? subtitle,
      bool? maintainState,
      ListTileControlAffinity? controlAffinity,
      Color? collapsedTextColor,
      Color? collapsedBackgroundColor,
      EdgeInsetsGeometry? childrenPadding,
      Widget? trailing,
      Widget? leading,
      Color? backgroundColor,
      Decoration? decoration,
      BorderRadiusGeometry? borderRadius,
      BoxBorder? border}) {
    return ExpansionTileItem(
        key: key ?? this.key,
        title: title ?? this.title,
        expansionKey: expansionKey ?? this.expansionKey,
        onExpansionChanged: (value) {
          onExpansionChanged?.call(value);
          this.onExpansionChanged?.call(value);
        },
        backgroundColor: backgroundColor ?? this.backgroundColor,
        leading: leading ?? this.leading,
        trailing: trailing ?? this.trailing,
        childrenPadding: childrenPadding ?? childrenPadding,
        collapsedBackgroundColor:
            collapsedBackgroundColor ?? this.collapsedBackgroundColor,
        collapsedTextColor: collapsedTextColor ?? this.collapsedTextColor,
        controlAffinity: controlAffinity ?? this.controlAffinity,
        maintainState: maintainState ?? this.maintainState,
        subtitle: subtitle ?? this.subtitle,
        textColor: textColor ?? this.textColor,
        initiallyExpanded: initiallyExpanded ?? this.initiallyExpanded,
        tilePadding: tilePadding ?? this.tilePadding,
        iconColor: iconColor ?? this.iconColor,
        expandedCrossAxisAlignment:
            expandedCrossAxisAlignment ?? this.expandedCrossAxisAlignment,
        expandedAlignment: expandedAlignment ?? this.expandedAlignment,
        collapsedIconColor: collapsedIconColor ?? this.collapsedIconColor,
        decoration: decoration ?? this.decoration,
        borderRadius: borderRadius ?? this.borderRadius,
        border: border ?? this.border,
        children: children ?? this.children);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration ??
          BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(8),
              border: border ?? Border.all(color: Colors.black)),
      clipBehavior: Clip.hardEdge,
      child: Theme(
        data: themeData ??
            Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTileCustom(
            key: expansionKey,
            onExpansionChanged: onExpansionChanged,
            initiallyExpanded: initiallyExpanded,
            tilePadding: tilePadding,
            expandedAlignment: expandedAlignment,
            collapsedIconColor: collapsedIconColor,
            expandedCrossAxisAlignment: expandedCrossAxisAlignment,
            iconColor: iconColor,
            title: title,
            textColor: textColor,
            subtitle: subtitle,
            maintainState: maintainState,
            controlAffinity: controlAffinity,
            collapsedTextColor: collapsedTextColor,
            collapsedBackgroundColor: collapsedBackgroundColor,
            childrenPadding: childrenPadding,
            trailing: trailing,
            leading: leading,
            backgroundColor: backgroundColor,
            children: children ?? []),
      ),
    );
  }
}
