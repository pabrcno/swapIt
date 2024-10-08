import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:swapit/presentation/home/home.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return SignInScreen(
              headerBuilder: (context, constraints, _) {
                return Image.asset(
                  'assets/logo500.png',
                );
              },
              headerMaxExtent: 210,
              oauthButtonVariant: OAuthButtonVariant.icon_and_text,
              providerConfigs: const [
                EmailProviderConfiguration(),
                GoogleProviderConfiguration(
                  clientId:
                      '950220633637-nhg56aposfbb7f0v3aornf1phqrqhub4.apps.googleusercontent.com',
                ),
              ]);
        }

        // Render your application if authenticated
        return Home();
      },
    );
  }
}
