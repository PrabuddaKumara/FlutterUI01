import 'package:dem/common/color-extension.dart';
import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback obTap;
  final bool isSelected;
  const TabButton({
    super.key,
    required this.icon,
    required this.obTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,

      child: InkWell(
        onTap: obTap,
        child: Icon(
          icon,
          size: 32,
          color: isSelected ? Tcolor.secondry : Colors.white,
        ),
      ),
    );
  }
}
