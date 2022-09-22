import 'package:flutter/material.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';

class ExchangesListView extends StatelessWidget {
  final List<StickerModel> exchanges;
  final double height;
  const ExchangesListView(
      {Key? key, required this.exchanges, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        itemCount: exchanges.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            child: Image.network(exchanges[index].imageUrl),
          );
        },
      ),
    );
  }
}
