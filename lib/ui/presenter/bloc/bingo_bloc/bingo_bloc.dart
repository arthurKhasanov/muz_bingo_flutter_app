import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muz_bingo_app/core/utils/image_to_bytes_helper/image_to_bytes_helper.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/domain/entity/song/song_entity.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/delete_bingo_set_use_case.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/generate_bingo_cards_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/get_saved_bingo_sets_use_case.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/regenerate_bingo_card_usecase.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/save_bingo_set_use_case.dart';
import 'package:muz_bingo_app/domain/use_case/bingo/update_bingo_set_use_case.dart';

part 'bingo_event.dart';
part 'bingo_state.dart';
part 'bingo_bloc.freezed.dart';

class BingoBloc extends Bloc<BingoEvent, BingoState> {
  BingoBloc({
    required GetSavedBingoSetsUseCase getSavedBingoSetsUseCase,
    required SaveBingoSetUseCase saveBingoSetUseCase,
    required UpdateBingoSetUseCase updateBingoSetUseCase,
    required DeleteBingoSetUseCase deleteBingoSetUseCase,
    required GenerateBingoSetUseCase generateBingoSetUseCase,
    required RegenerateBingoCardUseCase regenerateBingoCardUseCase,
  })  : _getSavedBingoSetsUseCase = getSavedBingoSetsUseCase,
        _saveBingoSetUseCase = saveBingoSetUseCase,
        _updateBingoSetUseCase = updateBingoSetUseCase,
        _deleteBingoSetUseCase = deleteBingoSetUseCase,
        _generateBingoSetUseCase = generateBingoSetUseCase,
        _regenerateBingoCardUseCase = regenerateBingoCardUseCase,
        super(BingoState()) {
    on<_GetSavedBingoSets>(_getSavedBingoSets);
    on<_GenerateBingoSet>(_generateBingoSet);
    on<_SaveBingoSet>(_saveBingoSet);
    on<_UpdateBingoSet>(_updateBingoSet);
    on<_DeleteBingoSet>(_deleteBingoSet);
    on<_RegenerateBingoCard>(_regenerateBingoCard);
  }

  final GetSavedBingoSetsUseCase _getSavedBingoSetsUseCase;
  final SaveBingoSetUseCase _saveBingoSetUseCase;
  final UpdateBingoSetUseCase _updateBingoSetUseCase;
  final DeleteBingoSetUseCase _deleteBingoSetUseCase;
  final GenerateBingoSetUseCase _generateBingoSetUseCase;
  final RegenerateBingoCardUseCase _regenerateBingoCardUseCase;

  Future<void> _getSavedBingoSets(_GetSavedBingoSets event, Emitter<BingoState> emit) async {
    emit(state.copyWith(status: BingoStatus.loading));

    final result = await _getSavedBingoSetsUseCase.call(
      GetSavedBingoSetsUseCaseParams(),
    );

    result.fold(
      (failure) => emit(state.copyWith(status: BingoStatus.error, errorMessage: failure.key)),
      (sets) => emit(state.copyWith(status: BingoStatus.success, sets: sets)),
    );
  }

  Future<void> _generateBingoSet(_GenerateBingoSet event, Emitter<BingoState> emit) async {
    emit(state.copyWith(status: BingoStatus.loading));

    final Uint8List bgImg = event.backgroundImageBytes ??
        (await ImageToBytesHelper.loadAssetImageAsBytes(path: 'assets/images/default_card_background.png'));

    final result = await _generateBingoSetUseCase.call(
      GenerateBingoSetParams(
        title: event.title,
        count: event.count,
        selectedSongs: event.selectedSongs,
        backgroundImageBytes: bgImg,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(status: BingoStatus.error, errorMessage: failure.key)),
      (set) => emit(state.copyWith(status: BingoStatus.generated, generatedSet: set)),
    );
  }

  Future<void> _saveBingoSet(_SaveBingoSet event, Emitter<BingoState> emit) async {
    emit(state.copyWith(status: BingoStatus.loading));

    final result = await _saveBingoSetUseCase.call(
      SaveBingoSetUseCaseParams(set: event.set),
    );

    result.fold(
      (failure) => emit(state.copyWith(status: BingoStatus.error, errorMessage: failure.key)),
      (_) => emit(state.copyWith(status: BingoStatus.saved, sets: [...state.sets, event.set])),
    );
  }

  Future<void> _updateBingoSet(_UpdateBingoSet event, Emitter<BingoState> emit) async {
    emit(state.copyWith(status: BingoStatus.loading));

    final result = await _updateBingoSetUseCase.call(
      UpdateBingoSetUseCaseParams(set: event.set),
    );

    result.fold(
      (failure) => emit(state.copyWith(status: BingoStatus.error, errorMessage: failure.key)),
      (_) => emit(state.copyWith(status: BingoStatus.updated)),
    );
  }

  Future<void> _deleteBingoSet(_DeleteBingoSet event, Emitter<BingoState> emit) async {
    emit(state.copyWith(status: BingoStatus.loading));

    final result = await _deleteBingoSetUseCase.call(
      DeleteBingoSetUseCaseParams(id: event.id),
    );

    result.fold(
      (failure) => emit(state.copyWith(status: BingoStatus.error, errorMessage: failure.key)),
      (_) {
        final updatedList = List<BingoSetEntity>.from(state.sets)..removeWhere((e) => e.id == event.id);
        emit(state.copyWith(sets: updatedList, status: BingoStatus.deleted));
      },
    );
  }

  Future<void> _regenerateBingoCard(_RegenerateBingoCard event, Emitter<BingoState> emit) async {
    emit(state.copyWith(status: BingoStatus.loading));

    final result = await _regenerateBingoCardUseCase.call(
      RegenerateBingoCardParams(
        set: event.set,
        index: event.index,
        pool: event.pool,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(status: BingoStatus.error, errorMessage: failure.key)),
      (card) {
        final updatedCards = [...event.set.cards]..[event.index] = card;
        final updatedSet = event.set.copyWith(cards: updatedCards);
        emit(state.copyWith(status: BingoStatus.success, generatedSet: updatedSet));
      },
    );
  }
}
