import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;

  const CustomScaffold({super.key, required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1c2547),
              Color(0xFF373678),
              Color(0xFF4c3c99),
              Color(0xFF4c3c99),
              Color(0xFF6249a9),
              Color(0xFF7e53ac),
              Color(0xFF8351ad),
              Color(0xFF9341ac),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
