import 'package:flutter/material.dart';

class InfoBanner extends StatelessWidget {
  final String message;
  final Color? color;
  final IconData? icon;

  const InfoBanner({
    Key? key,
    required this.message,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bannerColor = color ?? Colors.blue[500]!;
    final backgroundColor = color?.withOpacity(0.1) ?? Colors.blue[50]!;
    final textColor = color?.withOpacity(0.9) ?? Colors.blue[900]!;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border(
          left: BorderSide(color: bannerColor, width: 4),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(icon ?? Icons.info_outline, color: textColor),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}