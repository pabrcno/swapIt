import 'package:flutter/material.dart';

import '../../dev_data.dart';
import '../../domain/sticker/sticker_preview_model.dart';

class StickerPreview extends StatelessWidget {
  final StickerPreviewModel previewData;
  const StickerPreview({Key? key, required this.previewData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 140,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(previewData.sticker.imageUrl),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Row with title and time left
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${previewData.sticker.name} #${previewData.sticker.id}",
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Text(
                          "20m 45s",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    Text(
                      previewData.ownerLocation,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),

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
                    const SizedBox(height: 10),
                    // align to the right
                    // row with price and time left to exchange
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${previewData.price}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Bids 4',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
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
    return Card(
        margin: const EdgeInsets.only(left: 5, right: 5, top: 20),
        child: ListView.separated(
          itemCount: previews.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 30,
          ),
          itemBuilder: (context, index) {
            return StickerPreview(previewData: previews[index]);
          },
        ));
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
