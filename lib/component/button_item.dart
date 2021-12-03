import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  final Icon icon;
  final Function() onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      width: double.infinity,
      child: IconButton(
        icon: icon,
        onPressed: onTap,
      ),
    );
  }
}
