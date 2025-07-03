// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bingo_set_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BingoSetModelAdapter extends TypeAdapter<BingoSetModel> {
  @override
  final int typeId = 2;

  @override
  BingoSetModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BingoSetModel(
      id: fields[0] as int,
      title: fields[1] as String,
      cards: (fields[2] as List).cast<BingoCardModel>(),
      backgroundImageBytes: fields[3] as Uint8List,
    );
  }

  @override
  void write(BinaryWriter writer, BingoSetModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.cards)
      ..writeByte(3)
      ..write(obj.backgroundImageBytes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BingoSetModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
