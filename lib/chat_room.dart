import 'package:triton_chat/linked_list.dart';
import 'package:triton_chat/user.dart';
import 'package:triton_chat/message.dart';

class ChatRoom {
  int numberOfUsers;
  LinkedList<User> userList;
  LinkedList<Message> messageList;

  ChatRoom() {}
}
