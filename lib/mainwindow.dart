import 'package:flutter/material.dart';

class MainWindow extends StatelessWidget {
  MainWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 59, 105, 1),
      body: SafeArea(
        child: Container(
          height: 180,
          color: Color.fromRGBO(2, 67, 117, 1),
          child: Stack(
            children: [
              Column(
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
              Positioned(
                bottom: 10,
                right: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.blue[500],
                  radius: 31,
                  child: Icon(
                    Icons.add_a_photo_outlined,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
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
          radius: 40,
          backgroundColor: Colors.grey,
        ),
        SizedBox(
          width: 20,
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
