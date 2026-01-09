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
        'workflow_categories': null,
        'archived': 'exclude',
        'trigger_data': null,
        'inserted_at_date_range': null,
      },
    );
  });

  test('FeedOptions correctly serializes all provided fields', () {
    final options = FeedOptions.defaultOptions().copyWith(
      before: 'test before',
      after: 'test after',
      pageSize: 25,
      status: FeedOptionsStatus.all,
      source: 'test source',
      tenant: 'test tenant',
      hasTenant: true,
      workflowCategories: ['category1', 'category2'],
      archived: FeedOptionsArchivedScope.include,
      triggerData: {'test_key': 'test_value'},
      insertedAtDateRange: const InsertedAtDateRange(
        start: '2024-01-01T00:00:00Z',
        end: '2024-12-31T23:59:59Z',
        inclusive: true,
      ),
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
        'workflow_categories': ['category1', 'category2'],
        'archived': 'include',
        'trigger_data': {'test_key': 'test_value'},
        'inserted_at_date_range': {
          'start': '2024-01-01T00:00:00Z',
          'end': '2024-12-31T23:59:59Z',
          'inclusive': true,
        },
      },
    );
  });

  test('InsertedAtDateRange correctly serializes', () {
    const dateRange = InsertedAtDateRange(
      start: '2024-01-01T00:00:00Z',
      end: '2024-12-31T23:59:59Z',
      inclusive: true,
    );
    expect(
      dateRange.toJson(),
      {
        'start': '2024-01-01T00:00:00Z',
        'end': '2024-12-31T23:59:59Z',
        'inclusive': true,
      },
    );
  });

  test('InsertedAtDateRange correctly deserializes', () {
    final json = {
      'start': '2024-01-01T00:00:00Z',
      'end': '2024-12-31T23:59:59Z',
      'inclusive': true,
    };
    final dateRange = InsertedAtDateRange.fromJson(json);
    expect(dateRange.start, '2024-01-01T00:00:00Z');
    expect(dateRange.end, '2024-12-31T23:59:59Z');
    expect(dateRange.inclusive, true);
  });
}
