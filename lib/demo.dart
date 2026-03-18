import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  late ThemeStore themeStore;

  @override
  void initState() {
    super.initState();
    themeStore = ThemeStore();
    themeStore.addListener(_onThemeChanged);
  }

  @override
  void dispose() {
    themeStore.removeListener(_onThemeChanged);
    super.dispose();
  }

  void _onThemeChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OColor.white,
      appBar: OAppBar(
        title: 'OneStop UI Demo',
        isProgressive: true,
        stepNames: ["Demo 1", "Demo 2", "Demo 3", "Demo 4"],
        currentStep: 1,
        countSteps: 4,
        trailingIcon: themeStore.isDarkMode ? Icons.light_mode : Icons.dark_mode,
        onIconTap: () => themeStore.toggleTheme(),
      ),
      body: SafeArea(
        child: Container(
          color: OColor.white,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OText(text: 'OneStop UI', style: OTextStyle.displayMedium),
                  OText(text: 'Hello, World!', style: OTextStyle.bodyLarge),
                  OText(text: 'Welcome to OneStop UI', style: OTextStyle.headingLarge),
                  OText(text: 'This is a sample text', style: OTextStyle.bodyMedium),
                  OText(text: 'Enjoy building your app!', style: OTextStyle.bodySmall),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
