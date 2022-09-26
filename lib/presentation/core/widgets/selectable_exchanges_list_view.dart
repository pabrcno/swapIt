import 'package:flutter/material.dart';
import 'package:swapit/domain/sticker/sticker_model.dart';

class SelectableExchangeList extends StatefulWidget {
  final List<StickerModel> exchanges;
  final double height;
  final Function(List<StickerModel>) onChange;
  const SelectableExchangeList(
      {Key? key,
      required this.onChange,
      required this.exchanges,
      required this.height})
      : super(key: key);

  @override
  State<SelectableExchangeList> createState() => _SelectableExchangeListState();
}

class _SelectableExchangeListState extends State<SelectableExchangeList> {
  List<StickerModel> selectedExchanges = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: ListView.separated(
        itemCount: widget.exchanges.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                if (selectedExchanges.contains(widget.exchanges[index])) {
                  selectedExchanges.remove(widget.exchanges[index]);
                  widget.onChange(selectedExchanges);
                } else {
                  selectedExchanges.add(widget.exchanges[index]);
                  widget.onChange(selectedExchanges);
                }
              });
            },
            child: AnimatedOpacity(
              opacity:
                  selectedExchanges.contains(widget.exchanges[index]) ? 1 : 0.5,
              duration: const Duration(milliseconds: 300),
              child: Image.network(widget.exchanges[index].imageUrl),
            ),
          );
        },
      ),
    );
  }
}
