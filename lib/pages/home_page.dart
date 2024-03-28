import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_theme_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/about_me/about_me.dart';
import 'package:portfolio/widgets/navigation/nav_bar.dart';
import 'package:portfolio/widgets/profile_view/profile_view.dart';
import 'package:portfolio/widgets/skills_view/skills_view.dart';

import '../app_context.dart';
import '../widgets/navigation/nav_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {}

  final _scrollController = ScrollController();

  void listenToScroll() {
    _scrollController.addListener(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AppContext.setupThemeColorAndContext(context);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(() {});
  }

  EdgeInsets get padding =>
      const EdgeInsets.symmetric(horizontal: 80, vertical: 96);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 75,
                  color: Constants.themeColor.defaultt,
                ),
                Container(
                  color: Constants.themeColor.defaultt,
                  alignment: Alignment.centerLeft,
                  padding: padding,
                  child: ProfileView(),
                ),
                Container(
                  color: Constants.themeColor.gray50,
                  alignment: Alignment.center,
                  padding: padding,
                  child: AboutMeView(),
                ),
                Container(
                  color: Constants.themeColor.defaultt,
                  alignment: Alignment.center,
                  padding: padding,
                  child: SkillsView(),
                ),
                Container(
                  color: Constants.themeColor.defaultt,
                  alignment: Alignment.center,
                  padding: padding,
                  child: SkillsView(),
                ),
                Container(
                  height: 400,
                  color: Colors.green,
                ),
                Container(
                  height: 400,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
          ClipRect(
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                // ignore: prefer_const_constructors
                child: NavBar()),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
