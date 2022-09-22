import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:swapit/application/auction/sticker_auction_controller.dart';
import 'package:swapit/injection.dart';
import 'package:swapit/presentation/core/constants.dart';
import 'package:swapit/presentation/core/widgets/exchanges_list_view.dart';
import 'package:swapit/presentation/new_auction_screen/widgets/search_bar.dart';

import '../../domain/sticker/sticker_model.dart';

class NewAuctionScreen extends StatelessWidget {
  final StickerAuctionController controller = getIt<StickerAuctionController>();
  final now = DateTime.now();
  NewAuctionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('New Auction'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(screenPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => controller.sticker.id.isNotEmpty
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                                "${controller.sticker.name} - ${controller.sticker.id}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                )),
                          ),
                          IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              controller.sticker = StickerModel.empty();
                            },
                          )
                        ],
                      )
                    : SearchBar(
                        placeHolder: "Add a sticker for auction",
                        onStickerSelected: (sticker) {
                          controller.sticker = sticker;
                        },
                      ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => controller.sticker.imageUrl.isNotEmpty
                    ? Center(
                        child: Image.network(
                          controller.sticker.imageUrl,
                          height: 250,
                        ),
                      )
                    : const SizedBox(),
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Initial price \$',
                ),
                onChanged: (value) {
                  controller.bestPrice = double.parse(value);
                },
              ),
              const SizedBox(height: 20),
              SearchBar(
                placeHolder: "Add Exchanges",
                onStickerSelected: controller.addExchangeable,
              ),
              const SizedBox(height: 20),
              Obx(
                () => controller.exchangeables.isNotEmpty
                    ? SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ExchangesListView(
                          exchanges: controller.exchangeables,
                        ),
                      )
                    : const SizedBox(),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Colors.black,
                minWidth: double.infinity,
                padding: const EdgeInsets.all(20),
                onPressed: () {
                  DatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      minTime: now,
                      maxTime: DateTime(now.year, now.month, now.day + 7),
                      onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: now, locale: LocaleType.es);
                },
                child: const Text(
                  'Select end date',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
