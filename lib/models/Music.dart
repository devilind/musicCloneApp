import 'dart:convert';

Song songFromJson(String str) => Song.fromJson(json.decode(str));

String songToJson(Song data) => json.encode(data.toJson());

class Song {
  Song({
    this.id,
    this.name,
    this.song,
    this.songimage,
    this.artist,
  });

  String id;
  String name;
  String song;
  String songimage;
  String artist;

  factory Song.fromJson(Map<String, dynamic> json) => Song(
        id: json["id"],
        name: json["name"],
        song: json["song"],
        songimage: json["songimage"],
        artist: json["artist"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "song": song,
        "songimage": songimage,
        "artist": artist,
      };
}
