import 'package:flutter/material.dart';
import 'package:supabase_test/components/auth_state.dart';

class SplashScreen extends StatefulWidget {
    const SplashScreen({Key? key}) : super(key: key);

    @override
    SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends AuthState<SplashScreen> {
    @override
    void initState() {
        recoverSupabaseSession();
        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return const Scaffold(
            body: Center(
                child: CircularProgressIndicator(),
            ),
        );
    }
}
