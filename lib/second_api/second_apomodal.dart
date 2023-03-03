// To parse this JSON data, do
//
//     final secondApiModal = secondApiModalFromJson(jsonString);

import 'dart:convert';

SecondApiModal secondApiModalFromJson(String str) => SecondApiModal.fromJson(json.decode(str));

String secondApiModalToJson(SecondApiModal data) => json.encode(data.toJson());

class SecondApiModal {
  SecondApiModal({
    required this.data,
  });

  Data data;

  factory SecondApiModal.fromJson(Map<String, dynamic> json) => SecondApiModal(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  Data({
    // this.images,
     this.title,
     this.synopsis,
    });

  //Map<String, Image> ?images;
  String? title;
  String? synopsis;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
   // images: Map.from(json["images"]).map((k, v) => MapEntry<String, Image>(k, Image.fromJson(v))),
    synopsis: json["synopsis"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,

   // "images": Map.from(images).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "synopsis": synopsis,

  };
}
// class Aired {
//   Aired({
//     required this.from,
//     this.to,
//     required this.prop,
//     required this.string,
//   });
//
//   DateTime from;
//   dynamic to;
//   Prop prop;
//   String string;
//
//   factory Aired.fromJson(Map<String, dynamic> json) => Aired(
//     from: DateTime.parse(json["from"]),
//     to: json["to"],
//     prop: Prop.fromJson(json["prop"]),
//     string: json["string"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "from": from.toIso8601String(),
//     "to": to,
//     "prop": prop.toJson(),
//     "string": string,
//   };
// }
//
// class Prop {
//   Prop({
//     required this.from,
//     required this.to,
//   });
//
//   From from;
//   From to;
//
//   factory Prop.fromJson(Map<String, dynamic> json) => Prop(
//     from: From.fromJson(json["from"]),
//     to: From.fromJson(json["to"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "from": from.toJson(),
//     "to": to.toJson(),
//   };
// }
//
// class From {
//   From({
//     this.day,
//     this.month,
//     this.year,
//   });
//
//   int? day;
//   int? month;
//   int? year;
//
//   factory From.fromJson(Map<String, dynamic> json) => From(
//     day: json["day"],
//     month: json["month"],
//     year: json["year"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "day": day,
//     "month": month,
//     "year": year,
//   };
// }
//
// class Broadcast {
//   Broadcast({
//     this.day,
//     this.time,
//     this.timezone,
//     this.string,
//   });
//
//   dynamic day;
//   dynamic time;
//   dynamic timezone;
//   dynamic string;
//
//   factory Broadcast.fromJson(Map<String, dynamic> json) => Broadcast(
//     day: json["day"],
//     time: json["time"],
//     timezone: json["timezone"],
//     string: json["string"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "day": day,
//     "time": time,
//     "timezone": timezone,
//     "string": string,
//   };
// }
//
// class Genre {
//   Genre({
//     required this.malId,
//     required this.type,
//     required this.name,
//     required this.url,
//   });
//
//   int malId;
//   String type;
//   String name;
//   String url;
//
//   factory Genre.fromJson(Map<String, dynamic> json) => Genre(
//     malId: json["mal_id"],
//     type: json["type"],
//     name: json["name"],
//     url: json["url"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "mal_id": malId,
//     "type": type,
//     "name": name,
//     "url": url,
//   };
// }
//
// class Image {
//   Image({
//     required this.imageUrl,
//     required this.smallImageUrl,
//     required this.largeImageUrl,
//   });
//
//   String imageUrl;
//   String smallImageUrl;
//   String largeImageUrl;
//
//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//     imageUrl: json["image_url"],
//     smallImageUrl: json["small_image_url"],
//     largeImageUrl: json["large_image_url"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "image_url": imageUrl,
//     "small_image_url": smallImageUrl,
//     "large_image_url": largeImageUrl,
//   };
// }
//
// class Relation {
//   Relation({
//     required this.relation,
//     required this.entry,
//   });
//
//   String relation;
//   List<Genre> entry;
//
//   factory Relation.fromJson(Map<String, dynamic> json) => Relation(
//     relation: json["relation"],
//     entry: List<Genre>.from(json["entry"].map((x) => Genre.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "relation": relation,
//     "entry": List<dynamic>.from(entry.map((x) => x.toJson())),
//   };
// }
//
// class Streaming {
//   Streaming({
//     required this.name,
//     required this.url,
//   });
//
//   String name;
//   String url;
//
//   factory Streaming.fromJson(Map<String, dynamic> json) => Streaming(
//     name: json["name"],
//     url: json["url"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "url": url,
//   };
// }
//
// class Theme {
//   Theme({
//     required this.openings,
//     required this.endings,
//   });
//
//   List<String> openings;
//   List<String> endings;
//
//   factory Theme.fromJson(Map<String, dynamic> json) => Theme(
//     openings: List<String>.from(json["openings"].map((x) => x)),
//     endings: List<String>.from(json["endings"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "openings": List<dynamic>.from(openings.map((x) => x)),
//     "endings": List<dynamic>.from(endings.map((x) => x)),
//   };
// }
//
// class Title {
//   Title({
//     required this.type,
//     required this.title,
//   });
//
//   String type;
//   String title;
//
//   factory Title.fromJson(Map<String, dynamic> json) => Title(
//     type: json["type"],
//     title: json["title"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "type": type,
//     "title": title,
//   };
// }
//
// class Trailer {
//   Trailer({
//     required this.youtubeId,
//     required this.url,
//     required this.embedUrl,
//     required this.images,
//   });
//
//   String youtubeId;
//   String url;
//   String embedUrl;
//   Images images;
//
//   factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
//     youtubeId: json["youtube_id"],
//     url: json["url"],
//     embedUrl: json["embed_url"],
//     images: Images.fromJson(json["images"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "youtube_id": youtubeId,
//     "url": url,
//     "embed_url": embedUrl,
//     "images": images.toJson(),
//   };
// }
//
// class Images {
//   Images({
//     required this.imageUrl,
//     required this.smallImageUrl,
//     required this.mediumImageUrl,
//     required this.largeImageUrl,
//     required this.maximumImageUrl,
//   });
//
//   String imageUrl;
//   String smallImageUrl;
//   String mediumImageUrl;
//   String largeImageUrl;
//   String maximumImageUrl;
//
//   factory Images.fromJson(Map<String, dynamic> json) => Images(
//     imageUrl: json["image_url"],
//     smallImageUrl: json["small_image_url"],
//     mediumImageUrl: json["medium_image_url"],
//     largeImageUrl: json["large_image_url"],
//     maximumImageUrl: json["maximum_image_url"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "image_url": imageUrl,
//     "small_image_url": smallImageUrl,
//     "medium_image_url": mediumImageUrl,
//     "large_image_url": largeImageUrl,
//     "maximum_image_url": maximumImageUrl,
//   };
// }
