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
                    height: 65,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 10),
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://picsum.photos/id/2$i/200"),
                                fit: BoxFit.contain,
                              ),
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(100)),
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
                                    (i % 3 == 1 || i >= 9)
                                        ? "User ${i + 1}"
                                        : "+62 8999-0000-${i}7${i}9",
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
                                          color: (i < 2)
                                              ? Color(0xFF128C7E)
                                              : Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
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
                                  ),
                                  (i < 2)
                                      ? Container(
                                          alignment: Alignment.center,
                                          width: 70,
                                          // height: 25,
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: Color(0xFF128C7E),
                                            ),
                                            child: Text(
                                              "${3 - i}",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13),
                                            ),
                                          ),
                                        )
                                      : Container()
                                ],
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
