// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuoteModelAdapter extends TypeAdapter<QuoteModel> {
  @override
  final typeId = 0;

  @override
  QuoteModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuoteModel(
      id: fields[0] as int,
      category: fields[1] as String,
      quote: fields[2] as String,
      author: fields[3] as String,
      image: fields[4] as String,
      colorCode: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, QuoteModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.quote)
      ..writeByte(3)
      ..write(obj.author)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.colorCode);
  }
}
