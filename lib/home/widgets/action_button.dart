import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;

  const ActionButton({
    Key key,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Icon(icon, size: 24),
    );
  }
}
