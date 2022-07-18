import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_test/screens/account_screen.dart';
import 'package:supabase_test/screens/login_screen.dart';
import 'package:supabase_test/screens/splash_screen.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Supabase.initialize(
        url: 'https://suobhmlacmhlpvcyfcim.supabase.co',
        anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InN1b2JobWxhY21obHB2Y3lmY2ltIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTgxMDMyNDcsImV4cCI6MTk3MzY3OTI0N30.qQ-CNfwXmluVPAVjrfXFA2zHkdqZjrYbrS3_h6rN86k',
    );
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Supabase Flutter',
            theme: ThemeData.dark().copyWith(
                primaryColor: Colors.green,
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.green,
                    ),
                ),
            ),
            initialRoute: '/',
            routes: <String, WidgetBuilder>{
                '/': (_) => const SplashScreen(),
                '/login': (_) => const LoginScreen(),
                '/account': (_) => const AccountScreen(),
            },
        );
    }
}
