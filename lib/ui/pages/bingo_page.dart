import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/ui/navigation/app_route.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/bingo_bloc/bingo_bloc.dart';

class BingoPage extends StatelessWidget {
  const BingoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bingo-сеты')),
      body: BlocBuilder<BingoBloc, BingoState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.isError) {
            return Center(child: Text('Ошибка: ${state.errorMessage ?? "Неизвестная"}'));
          }

          if (state.sets.isEmpty) {
            return Center(child: Text('No items'));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: state.sets.length,
            separatorBuilder: (_, __) => const Gap(8),
            itemBuilder: (context, index) {
              return BingoCardTile(
                set: state.sets[index],
              );
            },
          );
        },
      ),
    );
  }
}

class BingoCardTile extends StatelessWidget {
  const BingoCardTile({super.key, required this.set});

  final BingoSetEntity set;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => context.goNamed(
        AppRoute.bingoSet.name,
        extra: {
          'set': set,
          'isSavedSet': true,
        },
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  set.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Gap(2),
                Text(
                  '${set.cards.length} карт',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.black54,
                      ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () async {
                final bool isDeletionConfirmed = await showDialog<bool>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Удаление'),
                          content: Text('Вы уверены, что хотите удалить сет ${set.title}?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text('ОК'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text('Отмена'),
                            ),
                          ],
                        );
                      },
                    ) ??
                    false;
                if (isDeletionConfirmed) {
                  // ignore: use_build_context_synchronously
                  context.read<BingoBloc>().add(BingoEvent.deleteBingoSet(id: set.id));
                }
              },
              child: Icon(
                Icons.delete,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
