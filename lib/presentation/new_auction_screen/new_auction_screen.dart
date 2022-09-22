import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';
import 'package:swapit/application/auction/sticker_auction_controller.dart';
import 'package:swapit/injection.dart';
import 'package:swapit/presentation/core/constants.dart';
import 'package:swapit/presentation/core/widgets/exchanges_list_view.dart';
import 'package:swapit/presentation/new_auction_screen/widgets/search_bar.dart';

import '../../domain/sticker/sticker_model.dart';
import '../core/widgets/action_button.dart';

class NewAuctionScreen extends StatelessWidget {
  final StickerAuctionController controller = getIt<StickerAuctionController>();
  final now = DateTime.now();
  NewAuctionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Obx(
            () => Text(
              controller.sticker.id.isNotEmpty
                  ? "${controller.sticker.name} - ${controller.sticker.id}"
                  : "New Auction",
            ),
          ),
          actions: [
            Obx(() => controller.sticker.id.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    iconSize: 30,
                    color: Colors.red[300],
                    onPressed: () {
                      controller.sticker = StickerModel.empty();
                    },
                  )
                : const SizedBox()),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(screenPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => controller.sticker.id.isNotEmpty
                    ? const SizedBox()
                    : SearchBar(
                        placeHolder: "Add a sticker for auction",
                        onStickerSelected: (sticker) {
                          controller.sticker = sticker;
                        },
                      ),
              ),
              Obx(
                () => controller.sticker.imageUrl.isNotEmpty
                    ? Center(
                        child: Image.network(
                          controller.sticker.imageUrl,
                          height: 350,
                        ),
                      )
                    : const SizedBox(),
              ),
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Initial price ',
                  prefixIcon: Icon(Icons.monetization_on_outlined),
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
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              Obx((() => ActionButton(
                    onPressed: () {
                      DatePicker.showDateTimePicker(context,
                          theme: DatePickerTheme(
                            backgroundColor: Theme.of(context).backgroundColor,
                            doneStyle: TextStyle(
                                color: Theme.of(context).primaryColor),
                            cancelStyle: TextStyle(color: Colors.red[300]),
                            itemStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          showTitleActions: true,
                          minTime: now,
                          maxTime: DateTime(now.year, now.month, now.day + 7),
                          onConfirm: (date) {
                        controller.auctionEnd = date;
                      }, currentTime: now, locale: LocaleType.es);
                    },
                    title: controller.auctionEnd == null
                        ? 'Select end date'
                        : 'End date (${controller.auctionEnd!.toLocal().toString().substring(0, 16)})',
                  )))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            if (controller.isValid) {
              controller.auctionStart = DateTime.now();
              await controller.createStickerAuction();
            }
          },
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
