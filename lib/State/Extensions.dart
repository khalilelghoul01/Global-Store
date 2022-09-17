import 'package:flutter/material.dart';

extension TextWidget on String {
  @override
  Text get text {
    return Text(this);
  }

  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

extension StylingText on Text {
  Text copyWith(
      {Key? key,
      Color? color,
      double? fontSize,
      FontWeight? fontWeight,
      FontStyle? fontStyle,
      double? letterSpacing,
      double? wordSpacing,
      TextBaseline? textBaseline,
      double? height,
      StrutStyle? strutStyle,
      TextAlign? textAlign,
      TextDirection? textDirection,
      Locale? locale,
      bool? softWrap,
      TextOverflow? overflow,
      double? textScaleFactor,
      int? maxLines,
      String? semanticsLabel,
      TextWidthBasis? textWidthBasis,
      TextHeightBehavior? textHeightBehavior,
      Color? selectionColor,
      TextDecoration? decoration,
      TextStyle? style,
      String? text}) {
    return Text(
      text ?? this.data!,
      key: key,
      style: style ??
          TextStyle(
            color: color ?? this.style?.color,
            fontSize: fontSize ?? this.style?.fontSize,
            fontWeight: fontWeight ?? this.style?.fontWeight,
            fontStyle: fontStyle ?? this.style?.fontStyle,
            letterSpacing: letterSpacing ?? this.style?.letterSpacing,
            wordSpacing: wordSpacing ?? this.style?.wordSpacing,
            textBaseline: textBaseline ?? this.style?.textBaseline,
            height: height ?? this.style?.height,
            locale: locale ?? this.style?.locale,
            overflow: overflow ?? this.style?.overflow,
            decoration: decoration ?? this.style?.decoration,
          ),
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      softWrap: softWrap ?? this.softWrap,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
      selectionColor: selectionColor ?? this.selectionColor,
    );
  }

  Text get h1 {
    return copyWith(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }

  Text get h2 {
    return copyWith(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    );
  }

  Text get h3 {
    return copyWith(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  Text get h4 {
    return copyWith(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
  }

  Text get h5 {
    return copyWith(
      fontSize: 10,
      fontWeight: FontWeight.bold,
    );
  }

  Text get h6 {
    return copyWith(
      fontSize: 5,
      fontWeight: FontWeight.bold,
    );
  }

  Text get body1 {
    return copyWith(
      fontSize: 20,
    );
  }

  Text get body2 {
    return copyWith(
      fontSize: 15,
    );
  }

  Text get body3 {
    return copyWith(
      fontSize: 10,
    );
  }

  Text get body4 {
    return copyWith(
      fontSize: 5,
    );
  }

  Text get body5 {
    return copyWith(
      fontSize: 2,
    );
  }

  Text get body6 {
    return copyWith(
      fontSize: 1,
    );
  }

  Text color(Color color) {
    return copyWith(color: color);
  }

  Text get bold {
    return copyWith(fontWeight: FontWeight.bold);
  }

  Text get italic {
    return copyWith(fontStyle: FontStyle.italic);
  }

  Text get underline {
    return copyWith(decoration: TextDecoration.underline);
  }

  Text get lineThrough {
    return copyWith(decoration: TextDecoration.lineThrough);
  }

  Text get overline {
    return copyWith(decoration: TextDecoration.overline);
  }

  Text get center {
    return copyWith(textAlign: TextAlign.center);
  }

  Text get left {
    return copyWith(textAlign: TextAlign.left);
  }

  Text get right {
    return copyWith(textAlign: TextAlign.right);
  }

  Text get justify {
    return copyWith(textAlign: TextAlign.justify);
  }

  Text get uppercase {
    return copyWith(text: data!.toUpperCase());
  }

  Text get lowercase {
    return copyWith(text: data!.toLowerCase());
  }

  Text get capitalize {
    return copyWith(text: data!.capitalize);
  }

  Text get trim {
    return copyWith(text: data!.trim());
  }

  Text get trimLeft {
    return copyWith(text: data!.trimLeft());
  }

  Text get trimRight {
    return copyWith(text: data!.trimRight());
  }

  Text get reverse {
    return copyWith(text: data!.split('').reversed.join());
  }

  Text get removeHtmlTags {
    return copyWith(text: data!.replaceAll(RegExp(r'<[^>]*>'), ''));
  }

  Text get removeSpecialCharacters {
    return copyWith(text: data!.replaceAll(RegExp(r'[^a-zA-Z0-9]'), ''));
  }

  Text get removeWhiteSpace {
    return copyWith(text: data!.replaceAll(RegExp(r'\s+'), ''));
  }

  Text get w100 {
    return copyWith(fontWeight: FontWeight.w100);
  }

  Text get w200 {
    return copyWith(fontWeight: FontWeight.w200);
  }

  Text get w300 {
    return copyWith(fontWeight: FontWeight.w300);
  }

  Text get w400 {
    return copyWith(fontWeight: FontWeight.w400);
  }

  Text get w500 {
    return copyWith(fontWeight: FontWeight.w500);
  }

  Text get w600 {
    return copyWith(fontWeight: FontWeight.w600);
  }

  Text get w700 {
    return copyWith(fontWeight: FontWeight.w700);
  }

  Text get w800 {
    return copyWith(fontWeight: FontWeight.w800);
  }

  Text get w900 {
    return copyWith(fontWeight: FontWeight.w900);
  }

  Text style(TextStyle style) {
    return copyWith(style: style);
  }
}

extension GlobalUtils on Widget {
  Widget p(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Widget pSymmetric({double vertical = 0, double horizontal = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget pFromLTRB(double left, double top, double right, double bottom) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }

  Widget pOnly(
      {double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

  Widget pl(double value) {
    return Padding(
      padding: EdgeInsets.only(left: value),
      child: this,
    );
  }

  Widget pt(double value) {
    return Padding(
      padding: EdgeInsets.only(top: value),
      child: this,
    );
  }

  Widget pr(double value) {
    return Padding(
      padding: EdgeInsets.only(right: value),
      child: this,
    );
  }

  Widget pb(double value) {
    return Padding(
      padding: EdgeInsets.only(bottom: value),
      child: this,
    );
  }

  Widget m(double value) {
    return Container(
      margin: EdgeInsets.all(value),
      child: this,
    );
  }

  Widget mSymmetric({double vertical = 0, double horizontal = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget mFromLTRB(double left, double top, double right, double bottom) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }

  Widget mOnly(
      {double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Container(
      margin:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

  Widget ml(double value) {
    return Container(
      margin: EdgeInsets.only(left: value),
      child: this,
    );
  }

  Widget mt(double value) {
    return Container(
      margin: EdgeInsets.only(top: value),
      child: this,
    );
  }

  Widget mr(double value) {
    return Container(
      margin: EdgeInsets.only(right: value),
      child: this,
    );
  }

  Widget mb(double value) {
    return Container(
      margin: EdgeInsets.only(bottom: value),
      child: this,
    );
  }

  Widget w(double value) {
    return SizedBox(
      width: value,
      child: this,
    );
  }

  Widget h(double value) {
    return SizedBox(
      height: value,
      child: this,
    );
  }

  Widget wh(double width, double height) {
    return SizedBox(
      width: width,
      height: height,
      child: this,
    );
  }

  Widget get center {
    return Center(
      child: this,
    );
  }

  Widget get expand {
    return Expanded(
      child: this,
    );
  }

  Widget get scroll {
    return SingleChildScrollView(
      child: this,
    );
  }

  Widget get scrollVertical {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: this,
    );
  }

  Widget get scrollHorizontal {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: this,
    );
  }

//other utils

  Widget rounded(double) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(double),
      child: this,
    );
  }

  Widget circle(double) {
    return ClipOval(
      child: this,
    );
  }

  // gesture
  Widget onTap(Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: this,
    );
  }

  Widget onDoubleTap(Function() onDoubleTap) {
    return InkWell(
      onDoubleTap: onDoubleTap,
      child: this,
    );
  }

  Widget onLongPress(Function() onLongPress) {
    return InkWell(
      onLongPress: onLongPress,
      child: this,
    );
  }

  Widget onHorizontalDrag(Function(DragUpdateDetails) onHorizontalDrag) {
    return GestureDetector(
      onHorizontalDragUpdate: onHorizontalDrag,
      child: this,
    );
  }

  Widget onVerticalDrag(Function(DragUpdateDetails) onVerticalDrag) {
    return GestureDetector(
      onVerticalDragUpdate: onVerticalDrag,
      child: this,
    );
  }

  Widget onPan(Function(DragUpdateDetails) onPan) {
    return GestureDetector(
      onPanUpdate: onPan,
      child: this,
    );
  }

  Widget onScale(Function(ScaleUpdateDetails) onScale) {
    return GestureDetector(
      onScaleUpdate: onScale,
      child: this,
    );
  }

  Widget onScaleStart(Function(ScaleStartDetails) onScaleStart) {
    return GestureDetector(
      onScaleStart: onScaleStart,
      child: this,
    );
  }

  Widget onScaleEnd(Function(ScaleEndDetails) onScaleEnd) {
    return GestureDetector(
      onScaleEnd: onScaleEnd,
      child: this,
    );
  }

  Widget onPanStart(Function(DragStartDetails) onPanStart) {
    return GestureDetector(
      onPanStart: onPanStart,
      child: this,
    );
  }

  Widget onPanEnd(Function(DragEndDetails) onPanEnd) {
    return GestureDetector(
      onPanEnd: onPanEnd,
      child: this,
    );
  }

  Widget onPanCancel(Function() onPanCancel) {
    return GestureDetector(
      onPanCancel: onPanCancel,
      child: this,
    );
  }

  Widget onPanDown(Function(DragDownDetails) onPanDown) {
    return GestureDetector(
      onPanDown: onPanDown,
      child: this,
    );
  }

  Widget onPanUpdate(Function(DragUpdateDetails) onPanUpdate) {
    return GestureDetector(
      onPanUpdate: onPanUpdate,
      child: this,
    );
  }

  Widget onPanHorizontal(Function(DragUpdateDetails) onPanHorizontal) {
    return GestureDetector(
      onHorizontalDragUpdate: onPanHorizontal,
      child: this,
    );
  }

  Widget onPanVertical(Function(DragUpdateDetails) onPanVertical) {
    return GestureDetector(
      onVerticalDragUpdate: onPanVertical,
      child: this,
    );
  }

  Widget onForcePress(Function(ForcePressDetails) onForcePress) {
    return GestureDetector(
      onForcePressUpdate: onForcePress,
      child: this,
    );
  }

  Widget onForcePressStart(Function(ForcePressDetails) onForcePressStart) {
    return GestureDetector(
      onForcePressStart: onForcePressStart,
      child: this,
    );
  }

  Widget onForcePressPeak(Function(ForcePressDetails) onForcePressPeak) {
    return GestureDetector(
      onForcePressPeak: onForcePressPeak,
      child: this,
    );
  }

  Widget onForcePressEnd(Function(ForcePressDetails) onForcePressEnd) {
    return GestureDetector(
      onForcePressEnd: onForcePressEnd,
      child: this,
    );
  }
}
