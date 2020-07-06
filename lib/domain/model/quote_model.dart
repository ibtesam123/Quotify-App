import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'quote_model.g.dart';

@HiveType(typeId: 0)
class QuoteModel extends Equatable with HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String category;

  @HiveField(2)
  final String quote;

  @HiveField(3)
  final String author;

  @HiveField(4)
  final String image;

  @HiveField(5)
  final int colorCode;

  QuoteModel({
    @required this.id,
    @required this.category,
    @required this.quote,
    @required this.author,
    @required this.image,
    @required this.colorCode,
  });

  @override
  List<Object> get props => [id, category, quote, author, image];

  @override
  bool get stringify => true;

  QuoteModel copyWith({
    int id,
    String category,
    String quote,
    String author,
    String image,
    String colorCode,
  }) {
    return QuoteModel(
      id: id ?? this.id,
      category: category ?? this.category,
      quote: quote ?? this.quote,
      author: author ?? this.author,
      image: image ?? this.image,
      colorCode: colorCode ?? this.colorCode,
    );
  }

  factory QuoteModel.fromMap(Map<String, dynamic> map, int colorCode) {
    return QuoteModel(
      id: map['id'] ?? -1,
      category: map['category'] ?? '',
      quote: map['quote'] ?? '',
      author: map['author'] ?? '',
      image: map['image'] ?? 'null',
      colorCode: colorCode,
    );
  }
}
