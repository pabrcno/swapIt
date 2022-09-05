import 'package:freezed_annotation/freezed_annotation.dart';
part 'auction_failure.freezed.dart';

@freezed
class AuctionFailure with _$AuctionFailure {
  const factory AuctionFailure.unexpected() = _Unexpected;
  const factory AuctionFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory AuctionFailure.unableToUpdate() = _UnableToUpdate;
}
