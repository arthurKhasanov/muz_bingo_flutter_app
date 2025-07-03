part of 'bingo_bloc.dart';

@freezed
class BingoEvent with _$BingoEvent {
  const factory BingoEvent.getSavedBingoSets() = _GetSavedBingoSets;

  const factory BingoEvent.generateBingoSet({
    required String title,
    required int count,
    required List<SongEntity> selectedSongs,
    Uint8List? backgroundImageBytes,
  }) = _GenerateBingoSet;

  const factory BingoEvent.saveBingoSet({
    required BingoSetEntity set,
  }) = _SaveBingoSet;

  const factory BingoEvent.updateBingoSet({
    required BingoSetEntity set,
  }) = _UpdateBingoSet;

  const factory BingoEvent.deleteBingoSet({
    required int id,
  }) = _DeleteBingoSet;

  const factory BingoEvent.regenerateBingoCard({
    required BingoSetEntity set,
    required int index,
    required List<SongEntity> pool,
  }) = _RegenerateBingoCard;
}
