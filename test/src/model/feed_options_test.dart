import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';

void main() {
  test('FeedOptions default state is to exclude archived items', () {
    final options = FeedOptions.defaultOptions();
    expect(
      options,
      const FeedOptions(
        archived: FeedOptionsArchivedScope.exclude,
      ),
    );
  });

  test('FeedOptions correctly serializes all default fields', () {
    final options = FeedOptions.defaultOptions();
    expect(
      options.toJson(),
      {
        'before': null,
        'after': null,
        'page_size': null,
        'status': null,
        'source': null,
        'tenant': null,
        'has_tenant': null,
        'archived': 'exclude',
        'trigger_data': null,
      },
    );
  });

  test('FeedOptions correctly serializes all default fields', () {
    final options = FeedOptions.defaultOptions().copyWith(
      before: 'test before',
      after: 'test after',
      pageSize: 25,
      status: FeedOptionsStatus.all,
      source: 'test source',
      tenant: 'test tenant',
      hasTenant: true,
      archived: FeedOptionsArchivedScope.include,
      triggerData: {'test_key': 'test_value'},
    );
    expect(
      options.toJson(),
      {
        'before': 'test before',
        'after': 'test after',
        'page_size': 25,
        'status': 'all',
        'source': 'test source',
        'tenant': 'test tenant',
        'has_tenant': true,
        'archived': 'include',
        'trigger_data': {'test_key': 'test_value'},
      },
    );
  });
}
