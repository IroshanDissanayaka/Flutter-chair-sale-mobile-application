import 'package:flutter/material.dart';

// BaseAppBar ******************************************************************
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  // +BaseAppBar
  final Color backgroundColor = Colors.white;
  final Color fontColor = Colors.black;
  final String title;
  final List<Widget> actions;
  final Widget leading;

  /// you can add more fields that meet your needs

  const MyAppBar({Key key, this.title, this.actions, this.leading})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        automaticallyImplyLeading: true,
        leading: leading,
        title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: fontColor, fontWeight: FontWeight.bold, fontSize: 30),
            )),
        elevation: 0.0,
        backgroundColor: backgroundColor,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
} // -BaseAppBar
