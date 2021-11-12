import 'package:flutter/material.dart';

class StatusView extends StatefulWidget {
  StatusView({Key? key}) : super(key: key);

  @override
  _StatusViewState createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7, left: 10, right: 10),
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: 65,
              child: StatusList(
                myStatus: true,
                item: 0,
              ),
            ),
            SizedBox(height: 15),
            Text("Recent updates",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height,
              // color: Colors.red,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, i) => StatusList(
                  myStatus: false,
                  item: i,
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
}

class StatusList extends StatelessWidget {
  const StatusList({Key? key, @required this.myStatus, @required this.item})
      : super(key: key);
  final bool? myStatus;
  final int? item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 3),
          height: 65,
          child: Row(
            children: [
              (myStatus == false)
                  ? Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Color(0xFF128C7E),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://picsum.photos/id/2$item/200"),
                            fit: BoxFit.contain,
                          ),
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 58,
                      height: 58,
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://picsum.photos/id/890/200"),
                          fit: BoxFit.contain,
                        ),
                        border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(Icons.add_circle_rounded,
                            color: Color(0xFF128C7E)),
                      ),
                    ),
              Container(
                padding: EdgeInsets.only(top: 8),
                // height: 10,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (myStatus == true) ? "My status" : "User ${item! + 1}",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    SizedBox(height: 7),
                    Expanded(
                      child: Container(
                        height: 20,
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          (myStatus == true)
                              ? "Tap to add status update"
                              : "Today, 1:07 PM",
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
          )),
    );
  }
}
