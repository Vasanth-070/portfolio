import 'package:flutter/material.dart';
import 'package:portfolio/app_context.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/theme_data/app_theme_data.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void toggleTheme() {
    setState((() => {}));
  }

  @override
  Widget build(BuildContext context) {
    AppThemeData.instance.setupCallBack(toggleTheme);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vasanth's Portfolio",
      theme: AppThemeData.instance.lightTheme,
      darkTheme: AppThemeData.instance.darkTheme,
      themeMode: AppThemeData.instance.theme,
      builder: (context, widget) {
        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget!),
            breakpoints: const [
              ResponsiveBreakpoint.resize(568, name: MOBILE),
              ResponsiveBreakpoint.resize(706, name: MOBILE, scaleFactor: 1.1),
              ResponsiveBreakpoint.resize(775, name: MOBILE, scaleFactor: 1.15),
              ResponsiveBreakpoint.resize(844, name: MOBILE, scaleFactor: 1.2),
              ResponsiveBreakpoint.resize(1024,
                  name: TABLET, scaleFactor: 0.75),
              ResponsiveBreakpoint.resize(1280,
                  name: DESKTOP, scaleFactor: 1.00),
              ResponsiveBreakpoint.resize(1440,
                  name: DESKTOP, scaleFactor: 1.0),
              ResponsiveBreakpoint.resize(1700,
                  name: DESKTOP, scaleFactor: 1.0),
              ResponsiveBreakpoint.resize(1920,
                  name: DESKTOP, scaleFactor: 1.0),
              ResponsiveBreakpoint.resize(2560,
                  name: DESKTOP, scaleFactor: 1.0),
              /*
              ResponsiveBreakpoint.resize(568, name: MOBILE),
              ResponsiveBreakpoint.resize(706, name: MOBILE, scaleFactor: 1.1),
              ResponsiveBreakpoint.resize(775, name: MOBILE, scaleFactor: 1.15),
              ResponsiveBreakpoint.resize(844, name: MOBILE, scaleFactor: 1.2),
              ResponsiveBreakpoint.resize(1024, name: TABLET),
              ResponsiveBreakpoint.resize(1280,
                  name: DESKTOP, scaleFactor: 1.05),
              ResponsiveBreakpoint.resize(1440,
                  name: DESKTOP, scaleFactor: 1.10),
              ResponsiveBreakpoint.resize(1700,
                  name: DESKTOP, scaleFactor: 1.3),
              ResponsiveBreakpoint.resize(1920,
                  name: DESKTOP, scaleFactor: 1.5),
              ResponsiveBreakpoint.resize(2560,
                  name: DESKTOP, scaleFactor: 1.9),
                  */
            ]);
      },
      home: const MyHomePage(),
    );
  }
}

/*design file
https://www.figma.com/file/Rtg2vQoZFfMhQsz9KnjL7H/Personal-Portfolio-Website-Template-%257C-Mobile-%2526-Desktop-(Community)?node-id=333%3A792&mode=design*/