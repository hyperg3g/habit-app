import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: () {},
        )
      ],
      bottom: TabBar(
        tabs: <Tab>[
          Tab(
            icon: Icon(Icons.thumb_up_rounded),
          ),
          Tab(
            icon: Icon(Icons.thumb_down_rounded),
          )
        ],
      ),
    );
  }
}
