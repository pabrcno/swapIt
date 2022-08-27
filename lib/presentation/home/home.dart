import 'package:flutter/material.dart';

import '../../dev_data.dart';
import '../../domain/sticker/sticker_preview_model.dart';

class StickerPreview extends StatelessWidget {
  final StickerPreviewModel previewData;
  const StickerPreview({Key? key, required this.previewData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 210,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(previewData.sticker.imageUrl),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${previewData.sticker.name} #${previewData.sticker.id}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      previewData.ownerLocation,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Exchangeables',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Expanded(
                      child: ListView.separated(
                        itemCount: previewData.exchangeables.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                        itemBuilder: (context, index) {
                          return SizedBox(
                            child: Image.network(
                                previewData.exchangeables[index].imageUrl),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    // align to the right
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Bid \$${previewData.price}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).primaryColorDark,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class StickerPreviewList extends StatelessWidget {
  final List<StickerPreviewModel> previews;
  const StickerPreviewList({Key? key, required this.previews})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: previews.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemBuilder: (context, index) {
        return StickerPreview(previewData: previews[index]);
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SwapIt'),
        ),
        body: StickerPreviewList(
          previews: data.map((e) => StickerPreviewModel.fromJson(e)).toList(),
        ));
  }
}
