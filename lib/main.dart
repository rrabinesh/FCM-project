import 'package:fcm_project/firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: kDebugMode ? DefaultFirebaseOptions.currentPlatform : null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _fcmToken;

  @override
  void initState() {
    super.initState();
    getFCMToken();
  }

  Future<void> getFCMToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    String? token = await messaging.getToken();
    setState(() {
      _fcmToken = token;
    });
    debugPrint("FCM Token: $_fcmToken");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FCM Token Generator")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SelectableText(
            _fcmToken ?? "Fetching FCM Token...",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
