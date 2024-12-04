class BlogModel {
  final String? message;
  final int? statusCode;
  final List<Blog>? data;
  final int? totalCount;
  const BlogModel({this.message, this.statusCode, this.data, this.totalCount});
  BlogModel copyWith(
      {String? message, int? statusCode, List<Blog>? data, int? totalCount}) {
    return BlogModel(
        message: message ?? this.message,
        statusCode: statusCode ?? this.statusCode,
        data: data ?? this.data,
        totalCount: totalCount ?? this.totalCount);
  }

  Map<String, Object?> toJson() {
    return {
      'message': message,
      'statusCode': statusCode,
      'data': data?.map<Map<String, dynamic>>((data) => data.toJson()).toList(),
      'totalCount': totalCount
    };
  }

  static BlogModel fromJson(Map<String, Object?> json) {
    return BlogModel(
        message: json['message'] == null ? null : json['message'] as String,
        statusCode:
            json['statusCode'] == null ? null : json['statusCode'] as int,
        data: json['data'] == null
            ? null
            : (json['data'] as List)
                .map<Blog>(
                    (data) => Blog.fromJson(data as Map<String, Object?>))
                .toList(),
        totalCount:
            json['totalCount'] == null ? null : json['totalCount'] as int);
  }

  @override
  String toString() {
    return '''BlogModel(
                message:$message,
statusCode:$statusCode,
data:${data.toString()},
totalCount:$totalCount
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is BlogModel &&
        other.runtimeType == runtimeType &&
        other.message == message &&
        other.statusCode == statusCode &&
        other.data == data &&
        other.totalCount == totalCount;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, message, statusCode, data, totalCount);
  }
}

class Blog {
  final String? id;
  final Media? media;
  final String? title;
  final String? content;
  final String? source;
  final bool? isPublished;
  final bool? isFeatured;
  final String? slug;
  final String? category;
  final List<dynamic>? tags;
  final String? createdAt;
  final Stats? stats;
  final Flags? flags;
  const Blog(
      {this.id,
      this.media,
      this.title,
      this.content,
      this.source,
      this.isPublished,
      this.isFeatured,
      this.slug,
      this.category,
      this.tags,
      this.createdAt,
      this.stats,
      this.flags});
  Blog copyWith(
      {String? id,
      Media? media,
      String? title,
      String? content,
      String? source,
      bool? isPublished,
      bool? isFeatured,
      String? slug,
      String? category,
      List<dynamic>? tags,
      String? createdAt,
      Stats? stats,
      Flags? flags}) {
    return Blog(
        id: id ?? this.id,
        media: media ?? this.media,
        title: title ?? this.title,
        content: content ?? this.content,
        source: source ?? this.source,
        isPublished: isPublished ?? this.isPublished,
        isFeatured: isFeatured ?? this.isFeatured,
        slug: slug ?? this.slug,
        category: category ?? this.category,
        tags: tags ?? this.tags,
        createdAt: createdAt ?? this.createdAt,
        stats: stats ?? this.stats,
        flags: flags ?? this.flags);
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'media': media?.toJson(),
      'title': title,
      'content': content,
      'source': source,
      'isPublished': isPublished,
      'isFeatured': isFeatured,
      'slug': slug,
      'category': category,
      'tags': tags,
      'createdAt': createdAt,
      'stats': stats?.toJson(),
      'flags': flags?.toJson()
    };
  }

  static Blog fromJson(Map<String, Object?> json) {
    return Blog(
        id: json['id'] == null ? null : json['id'] as String,
        media: json['media'] == null
            ? null
            : Media.fromJson(json['media'] as Map<String, Object?>),
        title: json['title'] == null ? null : json['title'] as String,
        content: json['content'] == null ? null : json['content'] as String,
        source: json['source'] == null ? null : json['source'] as String,
        isPublished:
            json['isPublished'] == null ? null : json['isPublished'] as bool,
        isFeatured:
            json['isFeatured'] == null ? null : json['isFeatured'] as bool,
        slug: json['slug'] == null ? null : json['slug'] as String,
        category: json['category'] == null ? null : json['category'] as String,
        tags: json['tags'] == null ? null : json['tags'] as List<dynamic>,
        createdAt:
            json['createdAt'] == null ? null : json['createdAt'] as String,
        stats: json['stats'] == null
            ? null
            : Stats.fromJson(json['stats'] as Map<String, Object?>),
        flags: json['flags'] == null
            ? null
            : Flags.fromJson(json['flags'] as Map<String, Object?>));
  }

  @override
  String toString() {
    return '''Data(
                id:$id,
media:${media.toString()},
title:$title,
content:$content,
source:$source,
isPublished:$isPublished,
isFeatured:$isFeatured,
slug:$slug,
category:$category,
tags:$tags,
createdAt:$createdAt,
stats:${stats.toString()},
flags:${flags.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Blog &&
        other.runtimeType == runtimeType &&
        other.id == id &&
        other.media == media &&
        other.title == title &&
        other.content == content &&
        other.source == source &&
        other.isPublished == isPublished &&
        other.isFeatured == isFeatured &&
        other.slug == slug &&
        other.category == category &&
        other.tags == tags &&
        other.createdAt == createdAt &&
        other.stats == stats &&
        other.flags == flags;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, media, title, content, source,
        isPublished, isFeatured, slug, category, tags, createdAt, stats, flags);
  }
}

class Flags {
  final bool? liked;
  final bool? reacted;
  const Flags({this.liked, this.reacted});
  Flags copyWith({bool? liked, bool? reacted}) {
    return Flags(liked: liked ?? this.liked, reacted: reacted ?? this.reacted);
  }

  Map<String, Object?> toJson() {
    return {'liked': liked, 'reacted': reacted};
  }

  static Flags fromJson(Map<String, Object?> json) {
    return Flags(
        liked: json['liked'] == null ? null : json['liked'] as bool,
        reacted: json['reacted'] == null ? null : json['reacted'] as bool);
  }

  @override
  String toString() {
    return '''Flags(
                liked:$liked,
reacted:$reacted
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Flags &&
        other.runtimeType == runtimeType &&
        other.liked == liked &&
        other.reacted == reacted;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, liked, reacted);
  }
}

class Stats {
  final int? likeCount;
  final int? commentCount;
  final int? viewCount;
  const Stats({this.likeCount, this.commentCount, this.viewCount});
  Stats copyWith({int? likeCount, int? commentCount, int? viewCount}) {
    return Stats(
        likeCount: likeCount ?? this.likeCount,
        commentCount: commentCount ?? this.commentCount,
        viewCount: viewCount ?? this.viewCount);
  }

  Map<String, Object?> toJson() {
    return {
      'likeCount': likeCount,
      'commentCount': commentCount,
      'viewCount': viewCount
    };
  }

  static Stats fromJson(Map<String, Object?> json) {
    return Stats(
        likeCount: json['likeCount'] == null ? null : json['likeCount'] as int,
        commentCount:
            json['commentCount'] == null ? null : json['commentCount'] as int,
        viewCount: json['viewCount'] == null ? null : json['viewCount'] as int);
  }

  @override
  String toString() {
    return '''Stats(
                likeCount:$likeCount,
commentCount:$commentCount,
viewCount:$viewCount
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Stats &&
        other.runtimeType == runtimeType &&
        other.likeCount == likeCount &&
        other.commentCount == commentCount &&
        other.viewCount == viewCount;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, likeCount, commentCount, viewCount);
  }
}

class Media {
  final String? source;
  final String? type;
  const Media({this.source, this.type});
  Media copyWith({String? source, String? type}) {
    return Media(source: source ?? this.source, type: type ?? this.type);
  }

  Map<String, Object?> toJson() {
    return {'source': source, 'type': type};
  }

  static Media fromJson(Map<String, Object?> json) {
    return Media(
        source: json['source'] == null ? null : json['source'] as String,
        type: json['type'] == null ? null : json['type'] as String);
  }

  @override
  String toString() {
    return '''Media(
                source:$source,
type:$type
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Media &&
        other.runtimeType == runtimeType &&
        other.source == source &&
        other.type == type;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, source, type);
  }
}
