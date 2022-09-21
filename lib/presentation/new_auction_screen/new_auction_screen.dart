import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:swapit/application/auction/sticker_auction_controller.dart';
import 'package:swapit/injection.dart';
import 'package:swapit/presentation/core/constants.dart';
import 'package:swapit/presentation/core/widgets/exchanges_list_view.dart';
import 'package:swapit/presentation/new_auction_screen/widgets/city_picker.dart';
import 'package:swapit/presentation/new_auction_screen/widgets/search_bar.dart';

import '../../dev_data.dart';
import '../../domain/sticker/sticker_model.dart';

class NewAuctionScreen extends StatelessWidget {
  StickerAuctionController controller = getIt<StickerAuctionController>();
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
              SearchBar(
                placeHolder: "Add a sticker for auction",
                onStickerSelected: (sticker) {
                  controller.sticker = sticker;
                },
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.network(
                  StickerModel.fromJson(
                          data[0]["sticker"] as Map<String, dynamic>)
                      .imageUrl,
                  height: 220,
                ),
              ),

              const SizedBox(height: 20),
              // card with title initial price and an number input
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.grey[900],
                width: double.infinity,
                child: const Center(
                    child: Text("Select your city",
                        style: TextStyle(fontSize: 16, color: Colors.white))),
              ),

              CityPicker(),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: Column(children: [
                  SearchBar(
                    placeHolder: "Add Exchanges",
                    onStickerSelected: controller.addExchangeable,
                  ),
                  const SizedBox(height: 20),
                  ExchangesListView(
                    exchanges: data
                        .map((e) => StickerModel.fromJson(
                            e["sticker"] as Map<String, dynamic>))
                        .toList(),
                  ),
                ]),
              ),

              const SizedBox(height: 20),
              MaterialButton(
                color: Colors.black,
                minWidth: double.infinity,
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
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Initial price',
                ),
              ),
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
