import 'package:flutter/material.dart';

class MainWindow extends StatelessWidget {
  MainWindow({Key? key}) : super(key: key);
  var infoList = <TextInfo>[
    TextInfo('+998901234567', 'press to change the number'),
    TextInfo('@hello_123', 'Username'),
    TextInfo('About yourself', 'write something about yourself'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 59, 105, 1),
      body: SafeArea(
        child: Column(
          children: [
            HeadBar(),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 21,
                  ),
                ),
              ),
            ),
            ColumnClass(infoList: infoList),
          ],
        ),
      ),
    );
  }
}

class TextInfo {
  String head, body;
  TextInfo(this.head, this.body);
}

class ColumnClass extends StatelessWidget {
  var infoList = <TextInfo>[];
  ColumnClass({Key? key, required this.infoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: infoList.map((e) => InfoAboutUser(info: e)).toList(),
    );
  }
}

class InfoAboutUser extends StatelessWidget {
  TextInfo info;
  InfoAboutUser({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            info.head,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            info.body,
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 2,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class HeadBar extends StatelessWidget {
  const HeadBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Color.fromRGBO(2, 67, 117, 1),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          HighIcons(),
          SizedBox(
            height: 15,
          ),
          CenterLine(),
        ],
      ),
    );
  }
}

class CenterLine extends StatelessWidget {
  const CenterLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage('images/Diyor.jpg'),
        ),
        SizedBox(
          width: 23,
        ),
        Container(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Diyorjon Nasriddinov',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              Text(
                'online',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'id:8914017235',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class HighIcons extends StatelessWidget {
  const HighIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.chevron_left,
          size: 30,
          color: Colors.white,
        ),
        Expanded(child: SizedBox()),
        Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
        SizedBox(
          width: 30,
        ),
        Icon(
          Icons.more_vert,
          size: 30,
          color: Colors.white,
        )
      ],
    );
  }
}
