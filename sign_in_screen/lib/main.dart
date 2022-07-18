import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:sign_in_screen/firebase_options.dart';
import 'package:sign_in_screen/logged_out.dart';
import 'package:sign_in_screen/profile.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    try {
        await Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
        );
        /*await FirebaseAuth.instance.useAuthEmulator(*/
            /*'localhost', 9099*/
        /*);*/
        FlutterFireUIAuth.configureProviders([
            const EmailProviderConfiguration(),
            const GoogleProviderConfiguration(
                clientId: "...",
            ),
            const AppleProviderConfiguration(),
            const FacebookProviderConfiguration(
                clientId: "..."
            ),
            const TwitterProviderConfiguration(
                apiKey: "...",
                apiSecretKey: "...",
                redirectUri: "...",
            ),
        ]);
        print('Successfully configured Firebase');
    } on Exception catch (e) {
        print('Firebase configuration error: $e');
    }
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        final auth = FirebaseAuth.instance;

        return MaterialApp(
            title: 'Sign In Screen',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            initialRoute: auth.currentUser == null
                ? '/logged_out'
                : '/profile',
            routes: {
                '/logged_out': (context) => const LoggedOutScreen(),
                '/profile': (context) => const MyProfileScreen(),
            },
        );
    }
}
