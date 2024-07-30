import 'package:expansion_tile_group/src/core/expansion_tile_core.dart';
import 'package:flutter/material.dart';

class ExpansionTileItem extends StatelessWidget {
  const ExpansionTileItem({
    super.key,
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
    this.border,
    this.clipBehavior,
    this.boxShadow,
    this.expendedBorderColor,
    this.collapsedBorderColor,
    this.isHasTopBorder,
    this.isHasLeftBorder,
    this.isHasBottomBorder,
    this.isHasRightBorder,
    this.isHasTrailing,
    this.isEnableExpanded,
    this.isDefaultVerticalPadding,
    this.isHideSubtitleOnExpanded,
    this.trailingIcon,
  });

  const ExpansionTileItem.flat({
    super.key,
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
    this.controlAffinity,
    this.collapsedTextColor,
    this.collapsedIconColor,
    this.collapsedBackgroundColor,
    this.trailing,
    this.leading,
    this.themeData,
    this.decoration,
    this.clipBehavior,
    this.boxShadow,
    this.trailingIcon,
    this.borderRadius,
    this.collapsedBorderColor,
    this.expendedBorderColor,
    this.isHasBottomBorder,
    this.isHasLeftBorder,
    this.isHasRightBorder,
    this.isHasTopBorder,
    this.isHasTrailing,
    this.isEnableExpanded,
    this.isDefaultVerticalPadding,
    this.isHideSubtitleOnExpanded,
    BoxBorder? border,
    EdgeInsetsGeometry? childrenPadding,
    Alignment? expandedAlignment,
  })  : border = border ?? const Border(),
        childrenPadding = childrenPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        expandedAlignment = expandedAlignment ?? Alignment.topLeft;

  ExpansionTileItem.outlined({
    super.key,
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
    this.controlAffinity,
    this.collapsedTextColor,
    this.collapsedIconColor,
    this.collapsedBackgroundColor,
    this.trailing,
    this.leading,
    this.themeData,
    this.decoration,
    this.clipBehavior,
    this.boxShadow,
    this.isDefaultVerticalPadding,
    this.trailingIcon,
    this.border,
    this.isHideSubtitleOnExpanded,
    EdgeInsetsGeometry? childrenPadding,
    Alignment? expandedAlignment,
    BorderRadius? borderRadius,
    Color? collapsedBorderColor,
    Color? expendedBorderColor,
    bool? isHasTrailing,
    bool? isEnableExpanded,
  })  : borderRadius = borderRadius ?? BorderRadius.circular(8),
        childrenPadding = childrenPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        expandedAlignment = expandedAlignment ?? Alignment.topLeft,
        collapsedBorderColor = collapsedBorderColor ?? Colors.grey,
        expendedBorderColor = expendedBorderColor ?? Colors.blue,
        isHasBottomBorder = true,
        isHasLeftBorder = true,
        isHasRightBorder = true,
        isHasTopBorder = true,
        isHasTrailing = isHasTrailing ?? true,
        isEnableExpanded = isEnableExpanded ?? true;

  ExpansionTileItem.leaf({
    super.key,
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
    this.controlAffinity,
    this.collapsedTextColor,
    this.collapsedIconColor,
    this.collapsedBackgroundColor,
    this.trailing,
    this.leading,
    this.themeData,
    this.decoration,
    this.clipBehavior,
    this.boxShadow,
    this.isDefaultVerticalPadding,
    this.trailingIcon,
    this.border,
    this.isHideSubtitleOnExpanded,
    EdgeInsetsGeometry? childrenPadding,
    Alignment? expandedAlignment,
    Color? collapsedBorderColor,
    Color? expendedBorderColor,
    bool? isHasTrailing,
    bool? isEnableExpanded,
    double? leafRadius,
    bool isReverseLeaf = false,
  })  : borderRadius = isReverseLeaf
            ? BorderRadius.only(
                bottomRight: Radius.circular(leafRadius ?? 20),
                topLeft: Radius.circular(leafRadius ?? 20))
            : BorderRadius.only(
                bottomLeft: Radius.circular(leafRadius ?? 20),
                topRight: Radius.circular(leafRadius ?? 20)),
        childrenPadding = childrenPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        expandedAlignment = expandedAlignment ?? Alignment.topLeft,
        collapsedBorderColor = collapsedBorderColor ?? Colors.grey,
        expendedBorderColor = expendedBorderColor ?? Colors.blue,
        isHasBottomBorder = true,
        isHasLeftBorder = true,
        isHasRightBorder = true,
        isHasTopBorder = true,
        isHasTrailing = isHasTrailing ?? true,
        isEnableExpanded = isEnableExpanded ?? true;

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

  /// Specifies if the item is expanded or not.
  final GlobalKey<ExpansionTileCoreState>? expansionKey;

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
  /// Applies only to boxes with rectangular shapes; ignored if shape is not
  /// BoxShape.rectangle.
  ///
  final BorderRadius? borderRadius;

  /// Use [Border] objects to describe borders that do not depend on the reading
  /// direction.
  ///
  /// Use [BoxBorder] objects to describe borders that should flip their left
  /// and right edges based on whether the text is being read left-to-right or
  /// right-to-left.
  final BoxBorder? border;

  ///The clip behavior when Container.decoration is not null.
  /// Defaults to Clip.none. Must be Clip.none if decoration is null.
  /// If a clip is to be applied, the Decoration.getClipPath method for the provided decoration must return a clip path.
  /// (This is not supported by all decorations; the default implementation of that method throws an UnsupportedError.)
  final Clip? clipBehavior;

  ///A list of shadows cast by this box behind the box.
  /// The shadow follows the shape of the box.
  /// See also:
  /// kElevationToShadow, for some predefined shadows used in Material Design.
  /// PhysicalModel, a widget for showing shadows.
  final List<BoxShadow>? boxShadow;

  /// The color to display border box when collapsed.
  ///
  /// If this property is null then [ExpansionTileThemeData.backgroundColor] is used. If that
  /// is also null then Colors.transparent is used.
  ///
  /// See also:
  ///
  /// * [ExpansionTileTheme.of], which returns the nearest [ExpansionTileTheme]'s
  ///   [ExpansionTileThemeData].
  final Color? collapsedBorderColor;

  /// The color to display border box when expanded.
  ///
  /// If this property is null then [ThemeData.dividerColor] is used. If that
  /// is also null then Colors.transparent is used.
  ///
  /// See also:
  ///
  /// * ThemeData.of, which returns the nearest [ThemeData].
  final Color? expendedBorderColor;

  final bool? isHasTopBorder;
  final bool? isHasBottomBorder;
  final bool? isHasLeftBorder;
  final bool? isHasRightBorder;

  ///Permanently hide trailing included default icon
  final bool? isHasTrailing;

  ///The widget can expand or NOT.
  ///It helps when you want to prohibit expansion until the API requests success.
  ///More detail: https://github.com/congthanhng/Expansion-Tile-Group/issues/22
  final bool? isEnableExpanded;

  ///Remove completely default vertical title padding
  final bool? isDefaultVerticalPadding;

  ///Hide subtitle on expanded view
  final bool? isHideSubtitleOnExpanded;

  ///By default, ExpansionTile has default trailing icon with rotate animation whenever it is expanded/collapsed.
  ///This property used to override the default trailing icon.
  final Widget? trailingIcon;

  ExpansionTileItem copyWith({
    Key? key,
    Widget? title,
    List<Widget>? children,
    ValueChanged<bool>? onExpansionChanged,
    GlobalKey<ExpansionTileCoreState>? expansionKey,
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
    BorderRadius? borderRadius,
    BoxBorder? border,
    Clip? clipBehavior,
    ThemeData? themeData,
    List<BoxShadow>? boxShadow,
    Color? expendedBorderColor,
    Color? collapsedBorderColor,
    bool? isHasTopBorder,
    bool? isHasBottomBorder,
    bool? isHasLeftBorder,
    bool? isHasRightBorder,
    bool? isHasTrailing,
    bool? isEnableExpanded,
    bool? isDefaultVerticalPadding,
    bool? isHideSubtitleOnExpanded,
    Widget? trailingIcon,
  }) {
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
        childrenPadding: childrenPadding ?? this.childrenPadding,
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
        themeData: themeData ?? this.themeData,
        clipBehavior: clipBehavior ?? this.clipBehavior,
        boxShadow: boxShadow ?? this.boxShadow,
        collapsedBorderColor: collapsedBorderColor ?? this.collapsedBorderColor,
        expendedBorderColor: expendedBorderColor ?? this.expendedBorderColor,
        isHasTopBorder: isHasTopBorder ?? this.isHasTopBorder,
        isHasRightBorder: isHasRightBorder ?? this.isHasRightBorder,
        isHasLeftBorder: isHasLeftBorder ?? this.isHasLeftBorder,
        isHasBottomBorder: isHasBottomBorder ?? this.isHasBottomBorder,
        isHasTrailing: isHasTrailing ?? this.isHasTrailing,
        isEnableExpanded: isEnableExpanded ?? this.isEnableExpanded,
        isDefaultVerticalPadding:
            isDefaultVerticalPadding ?? this.isDefaultVerticalPadding,
        isHideSubtitleOnExpanded:
            isHideSubtitleOnExpanded ?? this.isHideSubtitleOnExpanded,
        trailingIcon: trailingIcon ?? this.trailingIcon,
        children: children ?? this.children);
  }

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
