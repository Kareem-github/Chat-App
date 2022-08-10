import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scholar_chat/screens/chat_screen.dart';
import 'package:scholar_chat/screens/login_screen.dart';
import 'package:scholar_chat/screens/register_screen.dart';

import 'firebase_options.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ScholarCaht());
}

class ScholarCaht extends StatelessWidget {
  const ScholarCaht({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id : (context) => LoginPage(),
        RegisterPage.id :(context) => RegisterPage(),
        ChatPage.id :(context) => ChatPage(),
        },
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id
    );
  }
}

