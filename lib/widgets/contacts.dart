import 'package:flutter/material.dart';
import 'package:triton_chat/models/user.dart';
import 'package:triton_chat/pages/chat_page.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ChatPage(),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35.0,
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contacts[index].name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      contacts[index].status,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
