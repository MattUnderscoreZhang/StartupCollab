import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class LoggedOutScreen extends StatelessWidget {
    const LoggedOutScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SignInScreen(
            actions: [
                AuthStateChangeAction<SignedIn>((context, state) {
                    Navigator.pushReplacementNamed(context, '/profile');
                }),
            ],
        );
    }
}
