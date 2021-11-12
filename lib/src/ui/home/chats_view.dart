// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ChatsView extends StatefulWidget {
  ChatsView({Key? key}) : super(key: key);

  @override
  _ChatsViewState createState() => _ChatsViewState();
}

class _ChatsViewState extends State<ChatsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.only(top: 7),
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, i) => Material(
                elevation: 1,
                child: InkWell(
                  // hoverColor: Colors.blue,
                  splashColor: Colors.black38,
                  onTap: () {},
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 6),
                    margin: EdgeInsets.symmetric(vertical: 2),
                    height: 65,
                    child: Row(
                      children: [
                        Hero(
                          tag: 'hero',
                          child: CircleAvatar(
                            backgroundColor: Color(0xff075e54),
                            radius: 35,
                            child: Icon(
                              Icons.person_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 4),
                          // height: 10,
                          width: 280,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "User ${i + 1}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 70,
                                    child: Text(
                                      "10:51 AM",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Expanded(
                                child: Container(
                                  height: 20,
                                  padding: EdgeInsets.only(right: 5),
                                  child: Text(
                                    "Hello world!",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
