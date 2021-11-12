// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone_ui/src/ui/home/chats_view.dart';
import 'package:whatsapp_clone_ui/src/ui/home/open_camera.dart';
import 'package:whatsapp_clone_ui/src/ui/home/status_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? dynWidth;

  final _tabWidgets = <Widget>[
    Container(
        width: 30, child: const Tab(icon: Icon(Icons.camera_alt_rounded))),
    Container(width: 70, child: const Tab(text: 'CHATS')),
    Container(width: 70, child: const Tab(text: 'STATUS')),
    Container(width: 70, child: const Tab(text: 'CALLS')),
  ];

  @override
  Widget build(BuildContext context) {
    dynWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: _tabWidgets.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            tabs: _tabWidgets,
            isScrollable: true,
            // labelPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
        body: TabBarView(children: <Widget>[
          OpenCamera(),
          ChatsView(),
          StatusView(),
          Container(child: Text('calls')),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.message_rounded),
        ), //
      ),
    );
  }
}
