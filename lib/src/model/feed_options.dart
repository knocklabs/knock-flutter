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
class InsertedAtDateRange with _$InsertedAtDateRange {
  const factory InsertedAtDateRange({
    /// The start date in ISO 8601 format
    String? start,

    /// The end date in ISO 8601 format
    String? end,

    /// Whether to be inclusive of the start and end dates
    bool? inclusive,
  }) = _InsertedAtDateRange;

  factory InsertedAtDateRange.fromJson(Map<String, dynamic> json) =>
      _$InsertedAtDateRangeFromJson(json);
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
    @JsonKey(name: 'workflow_categories') List<String>? workflowCategories,
    @Default(FeedOptionsArchivedScope.exclude)
    FeedOptionsArchivedScope archived,
    @JsonKey(name: 'trigger_data') Map<String, dynamic>? triggerData,
    @JsonKey(name: 'inserted_at_date_range')
    InsertedAtDateRange? insertedAtDateRange,
  }) = _FeedOptions;

  factory FeedOptions.defaultOptions() {
    return const FeedOptions();
  }
}
