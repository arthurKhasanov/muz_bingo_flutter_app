import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pull_down_button/pull_down_button.dart';

class TrailingIconButton extends StatelessWidget {
  const TrailingIconButton({
    super.key,
    required this.pullDownActions,
    this.child,
  });

  final List<({String title, Widget iconWidget, VoidCallback onTap, Color? color})>? pullDownActions;
  
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return PullDownButton(
        itemBuilder: (context) => pullDownActions!
            .map((e) => PullDownMenuItem(
                  onTap: e.onTap,
                  title: e.title,
                  iconWidget: e.iconWidget,
                  itemTheme: PullDownMenuItemTheme(
                      textStyle: TextStyle(
                    color: e.color,
                    fontSize: 17,
                  )),
                ))
            .toList(),
        buttonBuilder: (context, showMenu) => GestureDetector(
          onTap: showMenu,
          child: child ??
              Icon(
                Icons.more_vert,
                size: 20,
              ),
        ),
      );
    } else {
      return PopupMenuButton<String>(
        onSelected: (value) {
          (pullDownActions!.firstWhere((e) => e.title == value)).onTap();
        },
        itemBuilder: (BuildContext context) => pullDownActions!
            .map((e) => PopupMenuItem<String>(
                  value: e.title,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        e.title,
                        style: TextStyle(fontSize: 17, color: e.color),
                      ),
                      e.iconWidget
                    ],
                  ),
                ))
            .toList(),
        child: child ??
            Icon(
              Icons.more_vert,
              size: 20,
            ),
      );
    }
  }
}
