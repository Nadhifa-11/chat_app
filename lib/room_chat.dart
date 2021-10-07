import 'package:chat_app/chat_message.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoomChat extends StatelessWidget {
  const RoomChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery
        .of(context)
        .size
        .width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(75)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message...',
              style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w300),
            ),
            Image.asset(
              'assets/images/send.png',
              width: 35,
              height: 35,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))), child: Padding(
                padding:EdgeInsets.only(top:40, bottom: 40, left: 30, right: 30),
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_1.png',
                    width: 55,height: 55),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Slytherin', style: tittleTextStyle),
                        Text(
                          '14,209 members',
                          style: subTittleStyle,
                        )
                      ],
                    ),
                    Spacer(),
                    FloatingActionButton(
                      mini: true,
                      backgroundColor: Color(0xFF29CB9E),
                      onPressed: () {},
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              ),
              ChatMessage(
                imageUser: 'assets/images/pic_3.png',
                message: 'Shut Up Scorpius',
                time: '2:30',
              ),
              SizedBox(
                height: 12,
              ),
              ChatMessage(
                imageUser: 'assets/images/pic_2.png',
                message: 'My mom will hear about this',
                time: '3:11',
              ),
              SizedBox(height: 12,),
              Container(
                margin: EdgeInsets.only(top: 30, right: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFF),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'You two shut up',
                              style: lightTittleTextStyle,
                            ),
                            Text('22:08', style: lightTittleTextStyle)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(
                      'assets/images/pic_5.png',
                      height: 40,
                      width: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ChatMessage(
                imageUser: 'assets/images/pic_4.png',
                message: 'I love this song',
                time: '23:11',
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
