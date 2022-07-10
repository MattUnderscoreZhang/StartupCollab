import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatefulWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    void initState() {
        super.initState();
        _configureAmplify();
    }

    void _configureAmplify() async {
        try {
            await Amplify.addPlugin(AmplifyAuthCognito());
            await Amplify.configure(amplifyconfig);
            print('Successfully configured');
        } on Exception catch (e) {
            print('Error configuring Amplify: $e');
        }
    }

    @override
    Widget build(BuildContext context) {
        return Authenticator(
            child: MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                    primarySwatch: Colors.blue,
                ),
                builder: Authenticator.builder(),
                home: const MyHomePage(),
            ),
        );
    }
}

class MyHomePage extends StatelessWidget {
    const MyHomePage({Key? key}) : super(key: key);

    @override
        Widget build(BuildContext context) {
            return const Scaffold(
                body: Center(
                    child: Text(
                        "Successful login",
                    ),
                ),
            );
        }
}
