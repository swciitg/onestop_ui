import 'package:flutter/material.dart';
import 'package:onestop_ui/index.dart';
import 'package:onestop_ui/widget_demo/indicators_demo.dart';
import 'package:onestop_ui/widget_demo/buttons_demo.dart';
import 'package:onestop_ui/widget_demo/list_demo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize ThemeStore which will handle GetStorage initialization internally
  await ThemeStore().initTheme();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OneStop UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: themeStore.currentTheme,
        colorScheme: ColorScheme.fromSeed(
          seedColor: OColor.green600,
          brightness: themeStore.currentTheme,
        ),
        scaffoldBackgroundColor: themeStore.backgroundColor,
      ),
      home: Scaffold(
        backgroundColor: themeStore.backgroundColor,
        appBar: AppBar(
          title: Text('OneStop UI Demo'),
          backgroundColor: themeStore.surfaceColor,
          foregroundColor: themeStore.textColor,
          actions: [
            IconButton(
              icon: Icon(
                themeStore.isDarkMode ? Icons.light_mode : Icons.dark_mode,
                color: themeStore.iconColor,
              ),
              onPressed: () => themeStore.toggleTheme(),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            color: themeStore.backgroundColor,
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
                    CardsDemo(),
                    const SizedBox(height: 20),
                    TextfieldsDemo(),
                    IndicatorsDemo(),
                    const SizedBox(height: 10),
                    Divider(color: themeStore.borderColor),
                    const SizedBox(height: 10),
                    Text(
                      "Buttons Part",
                      style: TextStyle(fontSize: 25, color: themeStore.textColor),
                    ),
                    SizedBox(height: 25),
                    ButtonsDemo(),
                    const SizedBox(height: 10),
                    Divider(color: themeStore.borderColor),
                    const SizedBox(height: 10),
                    Text("List Demo", style: TextStyle(fontSize: 25, color: themeStore.textColor)),
                    SizedBox(height: 25),
                    ListDemo(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
