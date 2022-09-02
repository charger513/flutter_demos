import 'package:flutter/material.dart';

class ControlPanelAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const ControlPanelAppbar({
    Key? key,
    required this.title,
    this.actions,
  }) : super(key: key);

  final Widget title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: Colors.blue,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
