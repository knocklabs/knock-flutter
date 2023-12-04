import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/feed_update_request.dart';

void main() {
  test('FeedStatusUpdateRequest serializes correctly', () {
    const request = FeedStatusUpdateRequest(
      ids: ['1'],
    );
    expect(
      request.toJson(),
      {
        'message_ids': ['1'],
      },
    );
  });

  test('BulkFeedStatusUpdateRequest serializes correctly', () {
    const request = BulkFeedStatusUpdateRequest(
      userIds: ['1'],
      engagementStatus: FeedOptionsStatus.all,
      archived: FeedOptionsArchivedScope.include,
      hasTenant: true,
      tenants: ['1'],
    );
    expect(
      request.toJson(),
      {
        'user_ids': ['1'],
        'engagement_status': 'all',
        'archived': 'include',
        'has_tenant': true,
        'tenants': ['1'],
      },
    );
  });
}
