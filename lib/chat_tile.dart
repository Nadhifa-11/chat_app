import 'package:chat_app/room_chat.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageProfile;
  final String name;
  final String message;
  final String time;

  const ChatTile({required this.imageProfile,
    required this.name,
    required this.message,
    required this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return RoomChat();
        }));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageProfile,
            width: 55.0,
            height: 55.0,
          ),
          SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16.0,
                  )),
              Text(
                message,
                style: blackTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: greyTextStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
