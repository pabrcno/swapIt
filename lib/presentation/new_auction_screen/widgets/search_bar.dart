import 'package:flutter/material.dart';
import 'package:paginated_search_bar/paginated_search_bar.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';

import '../../../dev_data.dart';

class SearchBar extends StatefulWidget {
  final String placeHolder;
  final Function(StickerModel) onStickerSelected;
  const SearchBar(
      {Key? key, required this.placeHolder, required this.onStickerSelected})
      : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final bool _isOptionSelected = false;

  @override
  Widget build(BuildContext context) {
    StickerRecommendationPager pager = StickerRecommendationPager();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: 600,
            child: PaginatedSearchBar<StickerModel>(
              containerDecoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              itemPadding: 5,
              maxHeight: 300,
              hintText: widget.placeHolder,
              onSearch: ({
                required pageIndex,
                required pageSize,
                required searchQuery,
              }) async {
                return Future.delayed(const Duration(milliseconds: 0),
                    () async {
                  return data
                      .map((e) => StickerModel.fromJson(
                          e["sticker"] as Map<String, dynamic>))
                      .toList();
                });
              },
              itemBuilder: (
                context, {
                required item,
                required index,
              }) {
                return StickerRecommendation(
                  stickerModel: item,
                  toggleSearchBar: () => setState(() {}),
                  setSticker: widget.onStickerSelected,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class StickerRecommendation extends StatelessWidget {
  final StickerModel stickerModel;
  final Function toggleSearchBar;
  final Function setSticker;

  const StickerRecommendation(
      {Key? key,
      required this.stickerModel,
      required this.toggleSearchBar,
      required this.setSticker})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        return setSticker(StickerModel(
            id: stickerModel.id,
            name: stickerModel.name,
            imageUrl: stickerModel.imageUrl));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Text("${stickerModel.name} #${stickerModel.id}",
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class StickerRecommendationPager {
  int pageIndex = 0;
  final int pageSize;

  StickerRecommendationPager({
    this.pageSize = 20,
  });

  List<StickerModel> nextBatch({required List<StickerModel> stickers}) {
    List<StickerModel> batch = stickers.map((e) => e).toList();
    pageIndex += 1;
    return batch;
  }
}
