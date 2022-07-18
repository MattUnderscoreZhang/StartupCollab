import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRequiredState<T extends StatefulWidget> extends SupabaseAuthRequiredState<T> {
    @override
    void onUnauthenticated() {
        /// Users will be sent back to the LoginPage if they sign out.
        if (mounted) {
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
        }
    }
}
