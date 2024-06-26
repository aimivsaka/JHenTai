import 'package:html/dom.dart';

class GalleryComment {
  int id;
  String? username;
  String score;
  List<String> scoreDetails;
  Element content;
  String time;
  String? lastEditTime;
  bool fromMe;
  bool votedUp;
  bool votedDown;

  GalleryComment({
    required this.id,
    this.username,
    required this.score,
    required this.scoreDetails,
    required this.content,
    required this.time,
    this.lastEditTime,
    required this.fromMe,
    required this.votedUp,
    required this.votedDown,
  });
}
