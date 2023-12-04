import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:knock_flutter/knock_flutter.dart';

// Knock: Example user and feed data
const _exampleUserId = '1';
const _exampleUserToken = null;
const _exampleFeedChannelId = '495a74d0-3ac1-43f6-9906-344f9e7d94d9';

void main() => runApp(const _ExampleKnockApp());

class _ExampleKnockApp extends StatelessWidget {
  const _ExampleKnockApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Knock App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const _KnockPage(),
    );
  }
}

class _KnockPage extends StatefulWidget {
  const _KnockPage();

  @override
  State<_KnockPage> createState() => _KnockPageState();
}

class _KnockPageState extends State<_KnockPage> {
  late Knock knock;

  int _selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();

    /// Knock: We recommend not hardcoding API keys in your app. Instead, we
    /// suggest you provide it as an environment variable using either of
    /// these built-in Flutter methods when running or building your app:
    ///  1) `--dart-define=KNOCK_API_KEY=your_knock_public_api_key_value`
    ///  2) `--dart-define-from-file="config.json"`
    ///     where `config.json` is added to `.gitignore` and looks like:
    ///     ```
    ///     {
    ///        "KNOCK_API_KEY": "your_knock_public_api_key_value"
    ///     }
    ///     ```
    ///
    /// See https://dart.dev/guides/environment-declarations#flutter and
    /// https://codewithandrea.com/articles/flutter-api-keys-dart-define-env-files/#new-in-flutter-37-use---dart-define-from-file
    /// to learn more about this approach.
    knock = Knock(const String.fromEnvironment("KNOCK_API_KEY"));
    knock.authenticate(_exampleUserId, _exampleUserToken);
  }

  @override
  void dispose() {
    // Knock: Make sure to dispose of your Knock instance when you're done with it!
    knock.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabPages = [
      _FeedWidget(
        knock: knock,
        feedChannelId: _exampleFeedChannelId,
      ),
      _PreferencesWidget(
        knock: knock,
      )
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Example Knock App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Preferences',
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (index) => setState(() => _selectedTabIndex = index),
      ),
      body: tabPages[_selectedTabIndex],
    );
  }
}

class _PreferencesWidget extends StatefulWidget {
  final Knock knock;

  const _PreferencesWidget({required this.knock});

  @override
  State<_PreferencesWidget> createState() => _PreferencesWidgetState();
}

class _PreferencesWidgetState extends State<_PreferencesWidget> {
  PreferenceSet? _preference;

  void _setPreferences() async {
    final PreferenceSet preferences = await widget.knock.preferences().set(
          SetPreferencesProperties(
            categories: {
              'dinosaur-proximity': WorkflowPreferenceSetting.workflow(true),
            },
            workflows: {
              'unix-servers':
                  WorkflowPreferenceSetting.channelTypePreferences(const {
                ChannelType.inAppFeed: true,
              }),
            },
            channelTypes: const {
              ChannelType.email: false,
            },
          ),
        );
    developer.log(preferences.toString());
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Knock: Getting all a user's default preferences.
      final preference = await widget.knock.preferences().get();
      setState(() => _preference = preference);
    });
  }

  @override
  Widget build(BuildContext context) {
    final preference = _preference;
    if (preference == null) {
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(preference.toString()),
    );
  }
}

class _FeedWidget extends StatefulWidget {
  const _FeedWidget({
    required this.knock,
    required this.feedChannelId,
  });

  final Knock knock;
  final String feedChannelId;

  @override
  State<_FeedWidget> createState() => _FeedWidgetState();
}

class _FeedWidgetState extends State<_FeedWidget> {
  late final FeedClient _feedClient;
  StreamSubscription? _subscription;

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _feedClient = widget.knock.feed(
      widget.feedChannelId,
      options: const FeedOptions(
        pageSize: 5,
      ),
    );

    // Knock: You can listen to a stream of specific events.
    _subscription =
        _feedClient.on(BindableFeedEvent.allItemsEvents).listen((event) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${event.eventType}: ${event.items.length}'),
        duration: const Duration(seconds: 1),
      ));
    });

    _scrollController.addListener(() {
      final position = _scrollController.position;
      if (position.pixels == position.maxScrollExtent) {
        // Knock: Loading the next set of feed items, in this case in an infinite list
        _feedClient.fetchNextPage();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    // Knock: Make sure to cancel any event streams you are listening to!
    _subscription?.cancel();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Knock: Presenting a feed is straightforward using StreamBuilder.
    return StreamBuilder<Feed>(
      stream: _feedClient.feed,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }

        final feed = snapshot.requireData;
        final items = feed.items;
        return Column(
          children: [
            _HeaderWidget(
              children: [
                _FeedMetadataWidget(feed: feed),
                _FeedActionsWidget(
                  feed: feed,
                  // Knock: Batch operations on feed items are supported.
                  onAllSeen: () => _feedClient.markAllAsSeen(),
                  onAllRead: () => _feedClient.markAllAsRead(),
                  onAllArchived: () => _feedClient.markAllAsArchived(),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                controller: _scrollController,
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                separatorBuilder: (_, __) => const Divider(),
                itemCount: items.length,
                itemBuilder: (_, index) {
                  final item = items[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: _FeedItemWidget(
                      item: item,
                      // Knock: Singular operations on feed items are supported.
                      onSeen: () => _feedClient.markAsSeen([item]),
                      onUnseen: () => _feedClient.markAsUnseen([item]),
                      onRead: () => _feedClient.markAsRead([item]),
                      onUnread: () => _feedClient.markAsUnread([item]),
                      onArchived: () => _feedClient.markAsArchived([item]),
                      onUnarchived: () => _feedClient.markAsUnarchived([item]),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _FeedMetadataWidget extends StatelessWidget {
  final Feed feed;

  const _FeedMetadataWidget({required this.feed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            'Total: ${feed.metadata.totalCount}',
            textAlign: TextAlign.start,
          ),
          const SizedBox(width: 8),
          Text(
            'Unread: ${feed.metadata.unreadCount}',
            textAlign: TextAlign.center,
          ),
          const SizedBox(width: 8),
          Text(
            'Unseen: ${feed.metadata.unseenCount}',
            textAlign: TextAlign.end,
          ),
          if (feed.requestInFlight)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 16.0,
                width: 16.0,
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}

class _FeedActionsWidget extends StatelessWidget {
  final Feed feed;
  final VoidCallback onAllSeen;
  final VoidCallback onAllRead;
  final VoidCallback onAllArchived;

  const _FeedActionsWidget({
    required this.feed,
    required this.onAllSeen,
    required this.onAllRead,
    required this.onAllArchived,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 8),
          OutlinedButton(
            onPressed: onAllSeen,
            child: const Text('Mark All Seen'),
          ),
          const SizedBox(width: 8),
          OutlinedButton(
            onPressed: onAllRead,
            child: const Text('Mark All Read'),
          ),
          const SizedBox(width: 8),
          OutlinedButton(
            onPressed: onAllArchived,
            child: const Text('Mark All Archived'),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

class _FeedItemWidget extends StatelessWidget {
  final FeedItem item;
  final VoidCallback onSeen;
  final VoidCallback onUnseen;
  final VoidCallback onRead;
  final VoidCallback onUnread;
  final VoidCallback onArchived;
  final VoidCallback onUnarchived;

  const _FeedItemWidget({
    required this.item,
    required this.onSeen,
    required this.onUnseen,
    required this.onRead,
    required this.onUnread,
    required this.onArchived,
    required this.onUnarchived,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('ID: ${item.id}'),
            for (var activity in item.activities) ...[
              activity.recipient.when(
                user: (user) => Text(
                  'User Recipient: ${user.id} / ${user.email} / ${user.name}',
                ),
                knockObject: (object) => Text(
                  'Knock Object Recipient: ${activity.recipient.toString()}',
                ),
              ),
              if (activity.actor != null)
                activity.actor!.when(
                  user: (user) => Text(
                    'User Actor: ${user.id} / ${user.email} / ${user.name}',
                  ),
                  knockObject: (object) => Text(
                    'Knock Object Actor: ${activity.recipient.toString()}',
                  ),
                ),
            ],
            Text('Inserted at: ${item.insertedAt}'),
            for (var block in item.blocks)
              if (block.rendered.isNotEmpty)
                Html(
                  data: block.rendered,
                  style: {
                    'body': Style(margin: Margins.zero),
                    'p': Style(padding: HtmlPaddings.zero, margin: Margins.zero)
                  },
                ),
          ],
        ),
        Row(
          children: [
            if (item.seenAt == null)
              OutlinedButton(
                onPressed: onSeen,
                child: const Text('Seen'),
              ),
            if (item.seenAt != null)
              OutlinedButton(
                onPressed: onUnseen,
                child: const Text('Unseen'),
              ),
            const SizedBox(width: 8.0),
            if (item.readAt == null)
              OutlinedButton(
                onPressed: onRead,
                child: const Text('Read'),
              ),
            if (item.readAt != null)
              OutlinedButton(
                onPressed: onUnread,
                child: const Text('Unread'),
              ),
            const SizedBox(width: 8.0),
            if (item.archivedAt == null)
              OutlinedButton(
                onPressed: onArchived,
                child: const Text('Archive'),
              ),
            if (item.archivedAt != null)
              OutlinedButton(
                onPressed: onUnarchived,
                child: const Text('Unarchive'),
              ),
          ],
        )
      ],
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  final List<Widget> children;

  const _HeaderWidget({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFC0C0C0),
      child: Column(
        children: [
          ...children,
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
