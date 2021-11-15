// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CallsView extends StatefulWidget {
  CallsView({Key? key}) : super(key: key);

  @override
  _CallsViewState createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
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
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    (i % 3 == 1 || i >= 9)
                                        ? "User ${i + 1}"
                                        : "+62 8999-0000-${i}7${i}9",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  SizedBox(height: 2),
                                  Expanded(
                                    child: Container(
                                      height: 20,
                                      padding: EdgeInsets.only(right: 5),
                                      child: Row(
                                        children: [
                                          RotationTransition(
                                              turns: AlwaysStoppedAnimation(
                                                  40 / 360),
                                              child: Icon(
                                                Icons.arrow_downward_rounded,
                                                color: (i % 3 == 1)
                                                    ? Colors.red
                                                    : Colors.green,
                                              )),
                                          Text(
                                            "November 15, 10:51 AM",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Container(
                                width: 70,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.phone_rounded),
                                  color: Color(0xFF128C7E),
                                ),
                              ),
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
