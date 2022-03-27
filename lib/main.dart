import 'package:flutter/material.dart';
import 'package:loyal_customer/pages/account_page.dart';
import 'package:loyal_customer/pages/login_page.dart';
import 'package:loyal_customer/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
      url: 'https://ucregbzkwezjkcufhofg.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVjcmVnYnprd2V6amtjdWZob2ZnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDgzNDkzNDksImV4cCI6MTk2MzkyNTM0OX0.84Zdo9Fp8Zh--Wd9OyLsHewrS-YQWlnHMTnD6Y_6f1s');
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Loyal Customer',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.green,
          )
        )
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}