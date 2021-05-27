import 'package:flutter/material.dart';
import 'package:habit_app/database/moor_database.dart';
import 'package:moor_db_viewer/moor_db_viewer.dart';
import 'package:provider/provider.dart';

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
        ),
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            final db = Provider.of<Database>(context, listen: false);

            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MoorDbViewer(db)));
          },
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
