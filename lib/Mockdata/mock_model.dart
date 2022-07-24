import 'package:flutter_artisto/Mockdata/mock_data.dart';

class mockData2 {
  final int Id;
  final String singer_name;
  final String first_bid;
  final String done_bid;
  final String subject;
  final String type;
  final String like;
  final String singer_bio;
  final String song_lyrics;
  final String profileImage;

  mockData2(
      {required this.Id,
      required this.singer_name,
      required this.first_bid,
      required this.done_bid,
      required this.subject,
      required this.type,
      required this.like,
      required this.singer_bio,
      required this.song_lyrics,
      required this.profileImage});

  factory mockData2.fromJson(Map<String, dynamic> json) => mockData2(
//  ?.toInt() ?? 0,  without using this code it read null error
      Id: json['Id']?.toInt() ?? 0,
      singer_name: json['singer_name'],
      first_bid: json['first_bid'],
      done_bid: json['done_bid'],
      subject: json['subject'],
      type: json['type'],
      like: json['like'],
      singer_bio: json['singer_bio'],
      song_lyrics: json['song_lyrics'],
      profileImage: json['profileImage']);

  Map<String, dynamic> toJson() => {
        'Id': Id,
        'singer_name': singer_name,
        'first_bid': first_bid,
        'done_bid': done_bid,
        'subject': subject,
        'type': type,
        'like': like,
        'singer_bio': singer_bio,
        'song_lyrics': song_lyrics,
        'profileImage': profileImage,
      };
}
