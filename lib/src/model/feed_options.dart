import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_options.freezed.dart';
part 'feed_options.g.dart';

enum FeedOptionsStatus {
  unread,
  read,
  unseen,
  seen,
  all;
}

enum FeedOptionsArchivedScope {
  include,
  exclude,
  only;
}

@Freezed(toJson: true)
class FeedOptions with _$FeedOptions {
  @JsonSerializable(explicitToJson: true)
  const factory FeedOptions({
    String? before,
    String? after,
    @JsonKey(name: 'page_size') int? pageSize,
    FeedOptionsStatus? status,
    String? source,
    String? tenant,
    @JsonKey(name: 'has_tenant') bool? hasTenant,
    @Default(FeedOptionsArchivedScope.exclude)
    FeedOptionsArchivedScope archived,
    @JsonKey(name: 'trigger_data') Map<String, dynamic>? triggerData,
  }) = _FeedOptions;

  factory FeedOptions.defaultOptions() {
    return const FeedOptions();
  }
}
