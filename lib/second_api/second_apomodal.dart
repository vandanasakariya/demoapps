// To parse this JSON data, do
//
//     final secondApiModal = secondApiModalFromMap(jsonString);

import 'dart:convert';

SecondApiModal secondApiModalFromMap(String str) =>
    SecondApiModal.fromMap(json.decode(str));

String secondApiModalToMap(SecondApiModal data) => json.encode(data.toMap());

class SecondApiModal {
  SecondApiModal({
    this.data,
  });

  Data? data;

  factory SecondApiModal.fromMap(Map<String, dynamic> json) => SecondApiModal(
        data: Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data!.toMap(),
      };
}

class Data {
  Data({
    this.malId,
    this.url,
    this.images,
    this.trailer,
    this.approved,
    this.titles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
    this.relations,
    this.theme,
    this.dataExternal,
    this.streaming,
  });

  int? malId;
  String? url;
  Map<String, Image>? images;
  Trailer? trailer;
  bool? approved;
  List<Title>? titles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  Aired? aired;
  String? duration;
  String? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  dynamic background;
  dynamic season;
  dynamic year;
  Broadcast? broadcast;
  List<Genre>? producers;
  List<Genre>? licensors;
  List<Genre>? studios;
  List<Genre>? genres;
  List<dynamic>? explicitGenres;
  List<Genre>? themes;
  List<dynamic>? demographics;
  List<Relation>? relations;
  Theme? theme;
  List<dynamic>? dataExternal;
  List<Streaming>? streaming;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        malId: json["mal_id"],
        url: json["url"],
        images: Map.from(json["images"])
            .map((k, v) => MapEntry<String, Image>(k, Image.fromMap(v))),
        trailer: Trailer.fromMap(json["trailer"]),
        approved: json["approved"],
        titles: List<Title>.from(json["titles"].map((x) => Title.fromMap(x))),
        title: json["title"],
        titleEnglish: json["title_english"],
        titleJapanese: json["title_japanese"],
        titleSynonyms: List<String>.from(json["title_synonyms"].map((x) => x)),
        type: json["type"],
        source: json["source"],
        episodes: json["episodes"],
        status: json["status"],
        airing: json["airing"],
        aired: Aired.fromMap(json["aired"]),
        duration: json["duration"],
        rating: json["rating"],
        score: json["score"]?.toDouble(),
        scoredBy: json["scored_by"],
        rank: json["rank"],
        popularity: json["popularity"],
        members: json["members"],
        favorites: json["favorites"],
        synopsis: json["synopsis"],
        background: json["background"],
        season: json["season"],
        year: json["year"],
        broadcast: Broadcast.fromMap(json["broadcast"]),
        producers:
            List<Genre>.from(json["producers"].map((x) => Genre.fromMap(x))),
        licensors:
            List<Genre>.from(json["licensors"].map((x) => Genre.fromMap(x))),
        studios: List<Genre>.from(json["studios"].map((x) => Genre.fromMap(x))),
        genres: List<Genre>.from(json["genres"].map((x) => Genre.fromMap(x))),
        explicitGenres:
            List<dynamic>.from(json["explicit_genres"].map((x) => x)),
        themes: List<Genre>.from(json["themes"].map((x) => Genre.fromMap(x))),
        demographics: List<dynamic>.from(json["demographics"].map((x) => x)),
        relations: List<Relation>.from(
            json["relations"].map((x) => Relation.fromMap(x))),
        theme: Theme.fromMap(json["theme"]),
        dataExternal: List<dynamic>.from(json["external"].map((x) => x)),
        streaming: List<Streaming>.from(
            json["streaming"].map((x) => Streaming.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "mal_id": malId,
        "url": url,
        "images": Map.from(images!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
        "trailer": trailer!.toMap(),
        "approved": approved,
        "titles": List<dynamic>.from(titles!.map((x) => x.toMap())),
        "title": title,
        "title_english": titleEnglish,
        "title_japanese": titleJapanese,
        "title_synonyms": List<dynamic>.from(titleSynonyms!.map((x) => x)),
        "type": type,
        "source": source,
        "episodes": episodes,
        "status": status,
        "airing": airing,
        "aired": aired!.toMap(),
        "duration": duration,
        "rating": rating,
        "score": score,
        "scored_by": scoredBy,
        "rank": rank,
        "popularity": popularity,
        "members": members,
        "favorites": favorites,
        "synopsis": synopsis,
        "background": background,
        "season": season,
        "year": year,
        "broadcast": broadcast!.toMap(),
        "producers": List<dynamic>.from(producers!.map((x) => x.toMap())),
        "licensors": List<dynamic>.from(licensors!.map((x) => x.toMap())),
        "studios": List<dynamic>.from(studios!.map((x) => x.toMap())),
        "genres": List<dynamic>.from(genres!.map((x) => x.toMap())),
        "explicit_genres": List<dynamic>.from(explicitGenres!.map((x) => x)),
        "themes": List<dynamic>.from(themes!.map((x) => x.toMap())),
        "demographics": List<dynamic>.from(demographics!.map((x) => x)),
        "relations": List<dynamic>.from(relations!.map((x) => x.toMap())),
        "theme": theme!.toMap(),
        "external": List<dynamic>.from(dataExternal!.map((x) => x)),
        "streaming": List<dynamic>.from(streaming!.map((x) => x.toMap())),
      };
}

class Aired {
  Aired({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  DateTime? from;
  dynamic to;
  Prop? prop;
  String? string;

  factory Aired.fromMap(Map<String, dynamic> json) => Aired(
        from: DateTime.parse(json["from"]),
        to: json["to"],
        prop: Prop.fromMap(json["prop"]),
        string: json["string"],
      );

  Map<String, dynamic> toMap() => {
        "from": from!.toIso8601String(),
        "to": to,
        "prop": prop!.toMap(),
        "string": string,
      };
}

class Prop {
  Prop({
    this.from,
    this.to,
  });

  From? from;
  From? to;

  factory Prop.fromMap(Map<String, dynamic> json) => Prop(
        from: From.fromMap(json["from"]),
        to: From.fromMap(json["to"]),
      );

  Map<String, dynamic> toMap() => {
        "from": from!.toMap(),
        "to": to!.toMap(),
      };
}

class From {
  From({
    this.day,
    this.month,
    this.year,
  });

  int? day;
  int? month;
  int? year;

  factory From.fromMap(Map<String, dynamic> json) => From(
        day: json["day"],
        month: json["month"],
        year: json["year"],
      );

  Map<String, dynamic> toMap() => {
        "day": day,
        "month": month,
        "year": year,
      };
}

class Broadcast {
  Broadcast({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  dynamic day;
  dynamic time;
  dynamic timezone;
  dynamic string;

  factory Broadcast.fromMap(Map<String, dynamic> json) => Broadcast(
        day: json["day"],
        time: json["time"],
        timezone: json["timezone"],
        string: json["string"],
      );

  Map<String, dynamic> toMap() => {
        "day": day,
        "time": time,
        "timezone": timezone,
        "string": string,
      };
}

class Genre {
  Genre({
    this.malId,
    this.type,
    this.name,
    this.url,
  });

  int? malId;
  String? type;
  String? name;
  String? url;

  factory Genre.fromMap(Map<String, dynamic> json) => Genre(
        malId: json["mal_id"],
        type: json["type"],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "mal_id": malId,
        "type": type,
        "name": name,
        "url": url,
      };
}

class Image {
  Image({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  factory Image.fromMap(Map<String, dynamic> json) => Image(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        largeImageUrl: json["large_image_url"],
      );

  Map<String, dynamic> toMap() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
        "large_image_url": largeImageUrl,
      };
}

class Relation {
  Relation({
    this.relation,
    this.entry,
  });

  String? relation;
  List<Genre>? entry;

  factory Relation.fromMap(Map<String, dynamic> json) => Relation(
        relation: json["relation"],
        entry: List<Genre>.from(json["entry"].map((x) => Genre.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "relation": relation,
        "entry": List<dynamic>.from(entry!.map((x) => x.toMap())),
      };
}

class Streaming {
  Streaming({
    this.name,
    this.url,
  });

  String? name;
  String? url;

  factory Streaming.fromMap(Map<String, dynamic> json) => Streaming(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}

class Theme {
  Theme({
    this.openings,
    this.endings,
  });

  List<String>? openings;
  List<String>? endings;

  factory Theme.fromMap(Map<String, dynamic> json) => Theme(
        openings: List<String>.from(json["openings"].map((x) => x)),
        endings: List<String>.from(json["endings"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "openings": List<dynamic>.from(openings!.map((x) => x)),
        "endings": List<dynamic>.from(endings!.map((x) => x)),
      };
}

class Title {
  Title({
    this.type,
    this.title,
  });

  String? type;
  String? title;

  factory Title.fromMap(Map<String, dynamic> json) => Title(
        type: json["type"],
        title: json["title"],
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "title": title,
      };
}

class Trailer {
  Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  String? youtubeId;
  String? url;
  String? embedUrl;
  Images? images;

  factory Trailer.fromMap(Map<String, dynamic> json) => Trailer(
        youtubeId: json["youtube_id"],
        url: json["url"],
        embedUrl: json["embed_url"],
        images: Images.fromMap(json["images"]),
      );

  Map<String, dynamic> toMap() => {
        "youtube_id": youtubeId,
        "url": url,
        "embed_url": embedUrl,
        "images": images!.toMap(),
      };
}

class Images {
  Images({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  String? imageUrl;
  String? smallImageUrl;
  String? mediumImageUrl;
  String? largeImageUrl;
  String? maximumImageUrl;

  factory Images.fromMap(Map<String, dynamic> json) => Images(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        mediumImageUrl: json["medium_image_url"],
        largeImageUrl: json["large_image_url"],
        maximumImageUrl: json["maximum_image_url"],
      );

  Map<String, dynamic> toMap() => {
        "image_url": imageUrl,
        "small_image_url": smallImageUrl,
        "medium_image_url": mediumImageUrl,
        "large_image_url": largeImageUrl,
        "maximum_image_url": maximumImageUrl,
      };
}
