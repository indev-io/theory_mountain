import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theory_mountain/theme.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeprovider;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Topics'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            themeprovider = Provider.of<ThemeProvider>(context, listen: false),
            themeprovider.swapTheme(),
          },
          child: const Text('Change Theme'),
        ),
      ),
    );
  }
}
