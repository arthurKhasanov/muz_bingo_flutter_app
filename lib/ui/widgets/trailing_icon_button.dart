import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pull_down_button/pull_down_button.dart';

class TrailingIconButton extends StatelessWidget {
  const TrailingIconButton({super.key, this.pullDownActions});

  final List<(String title, Widget iconWidget, VoidCallback onTap, Color? color)>? pullDownActions;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return PullDownButton(
        itemBuilder: (context) => pullDownActions!
            .map((e) => PullDownMenuItem(
                  onTap: e.$3,
                  title: e.$1,
                  iconWidget: e.$2,
                  itemTheme: PullDownMenuItemTheme(
                      textStyle: TextStyle(
                    color: e.$4,
                    fontSize: 17,
                  )),
                ))
            .toList(),
        buttonBuilder: (context, showMenu) => GestureDetector(
          onTap: showMenu,
          child: Icon(
            Icons.more_vert,
            size: 20,
          ),
        ),
      );
    } else {
      return PopupMenuButton<String>(
        onSelected: (value) {
          (pullDownActions!.firstWhere((e) => e.$1 == value)).$3();
        },
        itemBuilder: (BuildContext context) => pullDownActions!
            .map((e) => PopupMenuItem<String>(
                  value: e.$1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        e.$1,
                        style: TextStyle(fontSize: 17, color: e.$4),
                      ),
                      e.$2
                    ],
                  ),
                ))
            .toList(),
        child: Icon(
          Icons.more_vert,
          size: 20,
        ),
      );
    }
  }
}
