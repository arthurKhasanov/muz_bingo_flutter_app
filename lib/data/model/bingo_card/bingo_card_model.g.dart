// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bingo_card_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BingoCardModelAdapter extends TypeAdapter<BingoCardModel> {
  @override
  final int typeId = 1;

  @override
  BingoCardModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BingoCardModel(
      id: fields[0] as int,
      songs: (fields[1] as List).cast<SongModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, BingoCardModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.songs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BingoCardModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
