import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/theme_data/app_theme_data.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/navigation/nav_bar.dart';
import 'package:portfolio/widgets/profile_view/profile_view.dart';

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
                ProfileView(),
                Container(
                  height: 400,
                  color: Colors.red,
                ),
                Container(
                  height: 400,
                  color: Colors.blue,
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
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
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
