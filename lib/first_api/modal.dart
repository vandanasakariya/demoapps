// To parse this JSON data, do
//
//     final firstApiModal = firstApiModalFromJson(jsonString);

import 'dart:convert';

FirstApiModal firstApiModalFromJson(String str) =>
    FirstApiModal.fromJson(json.decode(str));

String firstApiModalToJson(FirstApiModal data) => json.encode(data.toJson());

class FirstApiModal {
  FirstApiModal({

    this.data,
  });


  List<Datum>? data;

  factory FirstApiModal.fromJson(Map<String, dynamic> json) => FirstApiModal(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
   // this.images,
    this.title,
    this.synopsis,
  });

  //Map<String, Image> ?images;

  String? title;
  String? synopsis;


  factory Datum.fromJson(Map<String, dynamic> json) => Datum(

        // images: Map.from(json["images"])
        //     .map((k, v) => MapEntry<String, Image>(k, Image.fromJson(v))),

        title: json["title"],

        synopsis: json["synopsis"],

      );

  Map<String, dynamic> toJson() => {
        // "images": Map.from(images)
        //     .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "title": title,
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
//   DateTime? to;
//   Prop prop;
//   String string;
//
//   factory Aired.fromJson(Map<String, dynamic> json) => Aired(
//         from: DateTime.parse(json["from"]),
//         to: json["to"] == null ? null : DateTime.parse(json["to"]),
//         prop: Prop.fromJson(json["prop"]),
//         string: json["string"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "from": from.toIso8601String(),
//         "to": to?.toIso8601String(),
//         "prop": prop.toJson(),
//         "string": string,
//       };
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
//         from: From.fromJson(json["from"]),
//         to: From.fromJson(json["to"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "from": from.toJson(),
//         "to": to.toJson(),
//       };
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
//         day: json["day"],
//         month: json["month"],
//         year: json["year"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "day": day,
//         "month": month,
//         "year": year,
//       };
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
//   String? day;
//   String? time;
//   String? timezone;
//   String? string;
//
//   factory Broadcast.fromJson(Map<String, dynamic> json) => Broadcast(
//         day: json["day"],
//         time: json["time"],
//         timezone: json["timezone"],
//         string: json["string"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "day": day,
//         "time": time,
//         "timezone": timezone,
//         "string": string,
//       };
// }
//
// class Demographic {
//   Demographic({
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
//   factory Demographic.fromJson(Map<String, dynamic> json) => Demographic(
//         malId: json["mal_id"],
//         type: json["type"],
//         name: json["name"],
//         url: json["url"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "mal_id": malId,
//         "type": type,
//         "name": name,
//         "url": url,
//       };
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
//         imageUrl: json["image_url"],
//         smallImageUrl: json["small_image_url"],
//         largeImageUrl: json["large_image_url"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "image_url": imageUrl,
//         "small_image_url": smallImageUrl,
//         "large_image_url": largeImageUrl,
//       };
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
//         type: json["type"],
//         title: json["title"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "type": type,
//         "title": title,
//       };
// }
//
// class Pagination {
//   Pagination({
//     required this.lastVisiblePage,
//     required this.hasNextPage,
//     required this.currentPage,
//     required this.items,
//   });
//
//   int lastVisiblePage;
//   bool hasNextPage;
//   int currentPage;
//   Items? items;
//
//   factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
//         lastVisiblePage: json["last_visible_page"],
//         hasNextPage: json["has_next_page"],
//         currentPage: json["current_page"],
//         items: Items.fromJson(json["items"]),
//       );
//
//   Map<String, dynamic> toJson() => {
//         "last_visible_page": lastVisiblePage,
//         "has_next_page": hasNextPage,
//         "current_page": currentPage,
//         "items": items.toJson(),
//       };
// }
//
