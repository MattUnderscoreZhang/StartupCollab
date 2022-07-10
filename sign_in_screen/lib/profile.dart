import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class MyProfileScreen extends StatelessWidget {
    const MyProfileScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return ProfileScreen(
            actions: [
                SignedOutAction((context) {
                    Navigator.pushReplacementNamed(context, '/logged_out');
                }),
            ],
        );
    }
}
