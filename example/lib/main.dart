import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:knock_flutter/knock_flutter.dart';

// Knock: Example user and feed data
const _exampleUserId = '1';
const _exampleUserToken = null;
const _exampleFeedChannelId = '495a74d0-3ac1-43f6-9906-344f9e7d94d9';
const _exampleApnsChannelId = 'c5c4fd65-20de-4ab5-bcda-8f8d077f528e';
const _exampleFcmChannelId = '54268be3-1d12-416a-81a5-3dc7681f2408';

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
      ),
      _UserWidget(
        knock: knock,
      ),
      _ChannelWidget(
        knock: knock,
      ),
      _NotificationsWidget(
        knock: knock,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Example Knock App'),
        actions: [
          IconButton(
            tooltip: "Logout",
            onPressed: () => knock.logout(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Preferences',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Channel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (index) => setState(() => _selectedTabIndex = index),
      ),
      body: tabPages[_selectedTabIndex],
    );
  }
}

class _UserWidget extends StatefulWidget {
  final Knock knock;

  const _UserWidget({required this.knock});

  @override
  State<_UserWidget> createState() => _UserWidgetState();
}

class _UserWidgetState extends State<_UserWidget> {
  User? _user;

  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Knock: Getting the current user
      final user = await widget.knock.user().get();
      setState(() => _user = user);
      _nameController.text = user.name ?? '';
    });
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  void _onChangeName() async {
    String name = _nameController.text;

    // Knock: Updating defined and custom user properties
    final user = await widget.knock.user().identify(
      name: name,
      properties: {
        'timeZoneName': DateTime.now().timeZoneName,
      },
    );
    setState(() => _user = user);
    _nameController.text = user.name ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _nameController,
                ),
              ),
              const SizedBox(width: 16),
              OutlinedButton(
                onPressed: _onChangeName,
                child: const Text('Change Name'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(_user?.toString() ?? 'null'),
        ],
      ),
    );
  }
}

class _NotificationsWidget extends StatefulWidget {
  const _NotificationsWidget({required this.knock});

  final Knock knock;

  @override
  State<_NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<_NotificationsWidget> {
  String? _fcmToken;
  Object? _fcmError;
  ChannelData? _fcmChannelData;

  String? _apnsToken;
  Object? _apnsError;
  ChannelData? _apnsChannelData;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final channelData =
            await widget.knock.user().getChannelData(_exampleFcmChannelId);
        setState(() {
          _fcmChannelData = channelData;
        });
      } catch (error) {
        setState(() {
          _fcmChannelData = null;
        });
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        final channelData =
            await widget.knock.user().getChannelData(_exampleApnsChannelId);
        setState(() {
          _apnsChannelData = channelData;
        });
      } catch (error) {
        setState(() {
          _apnsChannelData = null;
        });
      }
    });
  }

  Future<void> _getFcmToken() async {
    try {
      final token = await widget.knock.getFcmToken();
      setState(() {
        _fcmToken = token;
        _fcmError = null;
      });
    } catch (error) {
      setState(() {
        _fcmToken = null;
        _fcmError = error;
      });
    }
  }

  Future<void> _registerFcmToken() async {
    final token = _fcmToken;
    if (token != null) {
      final channelData = await widget.knock
          .user()
          .registerTokenForChannel(_exampleFcmChannelId, token);
      setState(() {
        _fcmChannelData = channelData;
      });
    }
  }

  Future<void> _deregisterFcmToken() async {
    final token = _fcmToken;
    if (token != null) {
      final channelData = await widget.knock
          .user()
          .deregisterTokenForChannel(_exampleFcmChannelId, token);
      setState(() {
        _fcmChannelData = channelData;
      });
    }
  }

  Future<void> _getApnsToken() async {
    try {
      final token = await widget.knock.getApnsToken();
      setState(() {
        _apnsToken = token;
        _apnsError = null;
      });
    } catch (error) {
      setState(() {
        _apnsToken = null;
        _apnsError = error;
      });
    }
  }

  Future<void> _registerApnsToken() async {
    final token = _apnsToken;
    if (token != null) {
      final channelData = await widget.knock
          .user()
          .registerTokenForChannel(_exampleApnsChannelId, token);
      setState(() {
        _apnsChannelData = channelData;
      });
    }
  }

  Future<void> _deregisterApnsToken() async {
    final token = _apnsToken;
    if (token != null) {
      final channelData = await widget.knock
          .user()
          .deregisterTokenForChannel(_exampleApnsChannelId, token);
      setState(() {
        _apnsChannelData = channelData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('FCM channel data: $_fcmChannelData'),
          Text('FCM token: ${_fcmToken ?? _fcmError}'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                OutlinedButton(
                  onPressed: _getFcmToken,
                  child: const Text('Get FCM Token'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: _registerFcmToken,
                  child: const Text('Register FCM Token'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: _deregisterFcmToken,
                  child: const Text('Deregister FCM Token'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text('APNS channel data: $_apnsChannelData'),
          Text('APNS token: ${_apnsToken ?? _apnsError}'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                OutlinedButton(
                  onPressed: _getApnsToken,
                  child: const Text('Get APNS Token'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: _registerApnsToken,
                  child: const Text('Register APNS Token'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: _deregisterApnsToken,
                  child: const Text('Deregister APNS Token'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ChannelWidget extends StatefulWidget {
  final Knock knock;

  const _ChannelWidget({required this.knock});

  @override
  State<_ChannelWidget> createState() => _ChannelWidgetState();
}

class _ChannelWidgetState extends State<_ChannelWidget> {
  ChannelData? _channelData;
  Object? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _handleChannelData(() {
        // Knock: Getting channel data
        return widget.knock.user().getChannelData(_exampleApnsChannelId);
      });
    });
  }

  void _onReplaceChannelData() async {
    _handleChannelData(() {
      // Knock: Setting existing channel data
      return widget.knock.user().setChannelData(
          _exampleApnsChannelId,
          ChannelData.forTokens([
            'test-token-${DateTime.now().toIso8601String()}',
          ]));
    });
  }

  void _onAppendChannelData() async {
    _handleChannelData(() {
      // Knock: Appending new tokens to existing channel data
      return widget.knock.user().setChannelData(
          _exampleApnsChannelId,
          ChannelData.forTokens([
            ..._channelData?.data.tokens ?? [],
            'test-token-${DateTime.now().toIso8601String()}',
          ]));
    });
  }

  void _handleChannelData(Future<ChannelData> Function() operation) async {
    try {
      final channelData = await operation();
      setState(() {
        _channelData = channelData;
        _error = null;
      });
    } catch (error) {
      setState(() {
        _channelData = null;
        _error = error;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            onPressed: _onReplaceChannelData,
            child: const Text('Replace Channel Data'),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: _onAppendChannelData,
            child: const Text('Append Channel Data'),
          ),
          const SizedBox(height: 16),
          if (_channelData != null) ...[
            Text(_channelData.toString()),
          ],
          if (_error != null) ...[
            Text(_error.toString()),
          ],
        ],
      ),
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
            channelTypes: {
              // Knock: You can turn channel types on or off
              ChannelType.email: ChannelTypePreference(value: false),
              // Knock: Or you can configure conditions for channels
              ChannelType.push: ChannelTypePreference(conditions: [
                const PreferenceCondition(
                  variable: 'recipient.muted_dinos',
                  operator: 'not_contains',
                  argument: 'data.dino',
                )
              ])
            },
            categories: {
              // Knock: You can turn categories on or off
              'dinosaur-proximity': WorkflowPreferenceSetting(value: true),
              // Knock: You can also configure conditions for each channel or entire category conditions
              'velociraptor-enclosure-alert': WorkflowPreferenceSetting(
                channelTypePreferences: {
                  ChannelType.inAppFeed: ChannelTypePreference(value: false),
                  ChannelType.push: ChannelTypePreference(conditions: [
                    const PreferenceCondition(
                      variable: 'recipient.muted_dinos',
                      operator: 'not_contains',
                      argument: 'data.dino',
                    )
                  ])
                },
                conditions: [
                  const PreferenceCondition(
                    variable: 'recipient.muted_dinos',
                    operator: 'not_contains',
                    argument: 'data.dino',
                  )
                ],
              )
            },
            workflows: {
              // Knock: You can turn workflows on or off
              'unix-servers': WorkflowPreferenceSetting(value: true),
              // Knock: You can also configure conditions for each workflow or entire workflow conditions
              'disable-park-security': WorkflowPreferenceSetting(
                channelTypePreferences: {
                  ChannelType.inAppFeed: ChannelTypePreference(value: false),
                  ChannelType.push: ChannelTypePreference(conditions: [
                    const PreferenceCondition(
                      variable: 'recipient.muted_dinos',
                      operator: 'not_contains',
                      argument: 'data.dino',
                    )
                  ])
                },
                conditions: [
                  const PreferenceCondition(
                    variable: 'recipient.muted_dinos',
                    operator: 'not_contains',
                    argument: 'data.dino',
                  )
                ],
              ),
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
      child: Column(
        children: [
          OutlinedButton(
            onPressed: _setPreferences,
            child: const Text('Set Preferences'),
          ),
          const SizedBox(height: 8.0),
          Text(preference.toString()),
        ],
      ),
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
              block.when(
                markdown: (name, content, rendered) => Html(
                  data: rendered,
                  style: {
                    'body': Style(margin: Margins.zero),
                    'p': Style(padding: HtmlPaddings.zero, margin: Margins.zero)
                  },
                ),
                text: (name, content) => Html(
                  data: content,
                  style: {
                    'body': Style(margin: Margins.zero),
                    'p': Style(padding: HtmlPaddings.zero, margin: Margins.zero)
                  },
                ),
                buttonSet: (name, buttons) => Row(
                  children: [
                    for (var button in buttons)
                      OutlinedButton(
                        onPressed: null,
                        child: Text(button.label),
                      ),
                  ],
                ),
              )
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
