import 'package:flutter/material.dart';

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({
    super.key,
    required this.keyText,
    required this.valueText,
    this.fontSizeValueText,
    this.fontWeightValueText,
  });

  final String keyText;
  final String valueText;
  final double? fontSizeValueText;
  final FontWeight? fontWeightValueText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            keyText,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20,
            ),
          ),
          Text(
            'R\$ $valueText',
            style: TextStyle(
              fontSize: fontSizeValueText ?? 18,
              fontWeight: fontWeightValueText ?? FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
