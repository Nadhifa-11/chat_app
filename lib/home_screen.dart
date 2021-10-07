import 'package:chat_app/chat_tile.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/pic_1.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Nadhifa Malfoy',
                  style: whiteTextStyle.copyWith(fontSize: 20),
                ),
                SizedBox(height: 2),
                Text('Travel Freelancer',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.only(top: 246),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.0),
                    Text(
                      'Friends',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 20.0),
                    ChatTile(
                        imageProfile: 'assets/images/pic_3.png',
                        name: 'Draco Malfoy',
                        message: 'I love Mrs.Malfoy',
                        time: '2:30'),
                    SizedBox(height: 10),
                    ChatTile(
                        imageProfile: 'assets/images/pic_2.png',
                        name: 'Scorpius Malfoy',
                        message: 'whatever dad',
                        time: '2:33'),
                    SizedBox(height: 10),
                    ChatTile(
                        imageProfile: 'assets/images/pic_4.png',
                        name: 'Averlyane Malfoy',
                        message: 'Shut Up brother',
                        time: 'Now'),
                    SizedBox(height: 30.0),
                    Text(
                      'Groups',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    ChatTile(
                        imageProfile: 'assets/images/icon_1.png',
                        name: 'Slytherin',
                        message: 'Room',
                        time: '7:09'),
                    SizedBox(
                      height: 16.0,
                    ),
                    ChatTile(
                        imageProfile: 'assets/images/icon_2.png',
                        name: 'HufflePuff',
                        message: 'Room',
                        time: '7:10'),
                    SizedBox(
                      height: 16.0,
                    ),
                    ChatTile(
                        imageProfile: 'assets/images/icon_3.png',
                        name: 'Gryffindor',
                        message: 'Room',
                        time: '7:11'),
                    SizedBox(
                      height: 16.0,
                    ),
                    ChatTile(
                        imageProfile: 'assets/images/icon_4.png',
                        name: 'Ravenclaw',
                        message: 'Room',
                        time: '7:12'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
