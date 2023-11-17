import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:knock_flutter/knock_flutter.dart';

void main() {
  runApp(const ExampleKnockApp());
}

class ExampleKnockApp extends StatelessWidget {
  const ExampleKnockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Knock App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KnockPage(),
    );
  }
}

class KnockPage extends StatefulWidget {
  const KnockPage({super.key});

  @override
  State<KnockPage> createState() => _KnockPageState();
}

class _KnockPageState extends State<KnockPage> {
  late Knock _knock;

  @override
  void initState() {
    super.initState();

    /// We recommend not hardcoding API keys in your app. Instead, we suggest
    /// you provide it as an environment variable using either of these
    /// built-in Flutter methods when running or building your app:
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
    _knock = Knock(const String.fromEnvironment("KNOCK_API_KEY"));
    _knock.authenticate('1');
  }

  // ignore: unused_element
  void _getAllPreferences() async {
    final List<PreferenceSet> all = await _knock.preferences.getAll();
    developer.log(all.toString());
  }

  // ignore: unused_element
  void _getPreferences() async {
    final PreferenceSet preferences = await _knock.preferences.get();
    developer.log(preferences.toString());
  }

  // ignore: unused_element
  void _setPreferences() async {
    final PreferenceSet preferences = await _knock.preferences.set(
      SetPreferencesProperties(
        categories: {
          'dinosaur-proximity': WorkflowPreferenceSetting.workflow(true),
        },
        workflows: {
          'unix-servers': WorkflowPreferenceSetting.channelTypePreferences({
            ChannelType.inAppFeed: true,
          }),
        },
        channelTypes: {
          ChannelType.email: false,
        },
      ),
    );
    developer.log(preferences.toString());
  }

  @override
  void dispose() {
    _knock.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Example Knock App'),
      ),
      body: Container(),
    );
  }
}
