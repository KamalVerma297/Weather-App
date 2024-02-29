import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    this.title,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
