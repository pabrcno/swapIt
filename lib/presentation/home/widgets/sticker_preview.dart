import 'package:flutter/material.dart';

import '../../../domain/sticker/sticker_preview_model.dart';

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
