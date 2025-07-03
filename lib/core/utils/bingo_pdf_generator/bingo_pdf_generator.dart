import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:muz_bingo_app/domain/entity/bingo_card/bingo_card_entity.dart';

class BingoCardPdfBuilder {
  static const PdfPageFormat pdf9to16 = PdfPageFormat(405, 720);

  static Future<void> export({
    required List<BingoCardEntity> cards,
    required Uint8List backgroundImageBytes,
    required String title,
  }) async {
    final pdf = pw.Document();

    final fontData = await rootBundle.load('assets/fonts/Roboto-Regular.ttf');
    final ttf = pw.Font.ttf(fontData);
    final bgImage = pw.MemoryImage(backgroundImageBytes);

    for (int index = 0; index < cards.length; index++) {
      final card = cards[index];
      pdf.addPage(
        pw.Page(
          pageFormat: pdf9to16,
          build: (context) {
            return pw.Stack(
              children: [
                pw.Positioned.fill(
                  child: pw.Image(bgImage, fit: pw.BoxFit.cover),
                ),
                pw.Positioned(
                  top: 16,
                  right: 16,
                  child: pw.Container(
                    width: 32,
                    height: 32,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.white,
                      shape: pw.BoxShape.circle,
                    ),
                    alignment: pw.Alignment.center,
                    child: pw.Text(
                      '${index + 1}',
                      style: pw.TextStyle(fontSize: 12, font: ttf),
                    ),
                  ),
                ),
                pw.Positioned(
                  top: 200,
                  left: 12,
                  right: 12,
                  child: _buildSongsGrid(card, ttf),
                ),
              ],
            );
          },
        ),
      );
    }

    await Printing.layoutPdf(onLayout: (_) async => pdf.save());
  }

  static pw.Widget _buildSongsGrid(BingoCardEntity card, pw.Font ttf) {
    return pw.GridView(
      crossAxisCount: 4,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      childAspectRatio: 1,
      children: card.songs.map((song) {
        return pw.Container(
          padding: pw.EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          decoration: pw.BoxDecoration(
            color: PdfColor.fromInt(0xF2FFFFFF),
            borderRadius: pw.BorderRadius.circular(6),
          ),
          alignment: pw.Alignment.center,
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              autoFontSizeText(
                song.artistName,
                ttf,
                color: PdfColors.grey700,
                maxLines: 3,
                minFontSize: 8,
              ),
              pw.SizedBox(height: 2),
              autoFontSizeText(
                song.songName,
                ttf,
                maxLines: 4,
                minFontSize: 8,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  static pw.Widget autoFontSizeText(
    String text,
    pw.Font font, {
    PdfColor color = PdfColors.black,
    int maxCharsPerLine = 16,
    double maxFontSize = 12,
    double minFontSize = 6,
    int maxLines = 2,
    pw.TextAlign textAlign = pw.TextAlign.center,
  }) {
    double fontSize = maxFontSize;
    final approxLines = (text.length / maxCharsPerLine).ceil();

    if (approxLines > maxLines) {
      final ratio = approxLines / maxLines;
      fontSize = (maxFontSize / ratio).clamp(minFontSize, maxFontSize);
    }

    return pw.Text(
      text,
      style: pw.TextStyle(fontSize: fontSize, font: font, color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: true,
    );
  }
}
