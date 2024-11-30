import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

// Routes
import 'package:my_portfolio_webapp/homepage.dart';


// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Homepage(),
    )
  ]
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Julian Feliciano | Portfolio',
      routerConfig: _router,
      debugShowCheckedModeBanner: false, // Removes debug banner
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF000000),
          secondary: const Color(0xFF000000),
        ),
        fontFamily: 'GeistMono',
      )
    );
  }
}
