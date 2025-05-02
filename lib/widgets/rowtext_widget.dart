import 'package:flutter/material.dart';

class RowTextWidget extends StatelessWidget {
  final String leftText;
  final String rightText;
  final TextStyle? leftTextStyle;
  final TextStyle? rightTextStyle;
  final EdgeInsetsGeometry? padding;

  const RowTextWidget({
    super.key,
    required this.leftText,
    required this.rightText,
    this.leftTextStyle,
    this.rightTextStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style:
                leftTextStyle ??
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            rightText,
            style:
                rightTextStyle ??
                const TextStyle(fontSize: 15, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
