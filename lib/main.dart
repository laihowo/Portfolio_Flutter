import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'my_site.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
    await FirebaseAnalytics.instance.logEvent(
      name: 'fire_initialization',
      parameters: {
        'content_type': 'system',
      },
    );
  } catch (e) {
    print('Failed to initialize Firebase: $e');
  }

  // Remove the leading hash # from the URL
  setPathUrlStrategy();

  runApp(const MySite());
}
