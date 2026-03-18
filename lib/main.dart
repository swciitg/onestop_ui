import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:onestop_ui/index.dart';
import 'demo.dart';
import 'demo2.dart';
import 'demo3.dart';
import 'demo4.dart';

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

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late ThemeStore themeStore;
  final int initialTabIndex = 0;
  late final ONavBarController _navBarController;
  final List<String> labels = ["Demo", "Demo2", "Demo3", "Demo4"];
  final List<IconData> icons = const [
    TablerIcons.arrow_rotary_first_left,
    TablerIcons.arrow_rotary_first_left,
    TablerIcons.arrow_rotary_first_left,
    TablerIcons.arrow_rotary_first_left,
  ];

  @override
  void initState() {
    super.initState();
    themeStore = ThemeStore();
    themeStore.addListener(_onThemeChanged);
    _navBarController = ONavBarController(
      initialIndex: initialTabIndex,
      length: labels.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    themeStore.removeListener(_onThemeChanged);
    super.dispose();
    _navBarController.dispose();
  }

  void _onThemeChanged() {
    setState(() {});
  }

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
        scaffoldBackgroundColor: OColor.white,
      ),
      home: Scaffold(
        bottomNavigationBar: ONavBar(
          controller: _navBarController,
          height: 70,
          initialSelectedTab: labels[initialTabIndex],
          labels: labels,
          icons: icons,
          onTabItemSelected: (int value) {
            setState(() {
              _navBarController.index = value;
            });
          },
        ),
        backgroundColor: OColor.white,
        body: SafeArea(
          child: IndexedStack(
            index: _navBarController.currentIndex,
            children: [Demo(), Demo2(), Demo3(), Demo4()],
          ),
        ),
      ),
    );
  }
}
