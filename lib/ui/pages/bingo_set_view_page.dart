import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:muz_bingo_app/core/utils/bingo_pdf_generator/bingo_pdf_generator.dart';
import 'package:muz_bingo_app/domain/entity/bingo_card/bingo_card_entity.dart';
import 'package:muz_bingo_app/domain/entity/bingo_set/bingo_set_entity.dart';
import 'package:muz_bingo_app/ui/presenter/bloc/bingo_bloc/bingo_bloc.dart';
import 'package:muz_bingo_app/utils/ui/app_flushbar.dart';

class BingoSetViewPage extends StatefulWidget {
  const BingoSetViewPage({
    super.key,
    required this.set,
    required this.isSavedSet,
  });

  final BingoSetEntity set;
  final bool isSavedSet;

  @override
  State<BingoSetViewPage> createState() => _BingoSetViewPageState();
}

class _BingoSetViewPageState extends State<BingoSetViewPage> {
  late final MemoryImage bgImageProvider;
  late bool isSavedSet;

  @override
  void initState() {
    bgImageProvider = MemoryImage(widget.set.backgroundImageBytes);
    isSavedSet = widget.isSavedSet;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BingoBloc, BingoState>(
      listener: (context, state) {
        if (state.isError) {
          AppFlushbar.show(context, message: state.errorMessage ?? 'Unexpected Error');
        }
        if (state.isSaved) {
          AppFlushbar.show(context, title: 'Well Done!', message: 'Set is saved');
          setState(() {
            isSavedSet = true;
          });
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.set.title,
            maxLines: 2,
          ),
        ),
        floatingActionButton: isSavedSet
            ? FloatingActionButton(
                onPressed: () async {
                  await BingoCardPdfBuilder.export(
                    cards: widget.set.cards,
                    backgroundImageBytes: widget.set.backgroundImageBytes,
                    title: widget.set.title,
                  );
                },
                child: const Icon(Icons.ios_share),
              )
            : FloatingActionButton(
                onPressed: () {
                  context.read<BingoBloc>().add(BingoEvent.saveBingoSet(set: widget.set));
                },
                child: const Icon(Icons.save),
              ),
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: RepaintBoundary(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BingoCardTile(
                  card: widget.set.cards[index],
                  bgImage: bgImageProvider,
                  index: index,
                ),
              ),
            ),
          ),
          itemCount: widget.set.cards.length,
        ),
      ),
    );
  }
}

class BingoCardTile extends StatelessWidget {
  const BingoCardTile({
    super.key,
    required this.card,
    required this.bgImage,
    required this.index,
  });

  final BingoCardEntity card;
  final ImageProvider bgImage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: bgImage,
              fit: BoxFit.cover,
              gaplessPlayback: true,
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text((index + 1).toString()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230, left: 8, right: 8),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: card.songs.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                final song = card.songs[index];
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.95),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        song.artistName,
                        style: const TextStyle(fontSize: 12, color: Colors.black54),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        minFontSize: 8,
                      ),
                      const Gap(2),
                      AutoSizeText(
                        song.songName,
                        style: const TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                        maxLines: 4,
                        minFontSize: 8,
                      ),
                    ],
                  ),
                );
              },
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
