part of 'bingo_bloc.dart';

enum BingoStatus {
  initial,
  loading,
  success,
  error,
  saved,
  updated,
  deleted,
  generated,
}

@freezed
class BingoState with _$BingoState {
  const factory BingoState({
    @Default(BingoStatus.initial) BingoStatus status,
    @Default([]) List<BingoSetEntity> sets,
    BingoSetEntity? generatedSet,
    String? errorMessage,
  }) = _BingoState;
}

extension BingoStateX on BingoState {
  bool get isLoading => status == BingoStatus.loading;
  bool get isGenerated => status == BingoStatus.generated;
  bool get isError => status == BingoStatus.error;
  bool get isSaved => status == BingoStatus.saved;
}
