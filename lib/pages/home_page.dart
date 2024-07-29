import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/ui_utils/color_util.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/about_me/about_me.dart';
import 'package:portfolio/widgets/experience/experince_view.dart';
import 'package:portfolio/widgets/get_in_touch/get_in_touch_view.dart';
import 'package:portfolio/widgets/navigation/nav_bar.dart';
import 'package:portfolio/widgets/profile_view/profile_view.dart';
import 'package:portfolio/widgets/projects_done/projects_view.dart';
import 'package:portfolio/widgets/skills_view/skills_view.dart';
import 'package:portfolio/widgets/testimonials/testimonial_view.dart';

import '../app_context.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollController = ScrollController();
  final _streamController = StreamController<NavButtonType>();
  Size screenSize = const Size(0, 0);
  void listenToScroll() {
    _scrollController.addListener(() {});
  }

  void _listenToStream() {
    _streamController.stream.listen((event){
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenSize = MediaQuery.sizeOf(context);
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
      body: SizedBox(
        width: screenSize.width,
        child: Stack(
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
                    color: Constants.themeColor.gray50,
                    alignment: Alignment.center,
                    padding: padding,
                    child: ExperienceView(),
                  ),
                  Container(
                    padding: padding,
                    color: Constants.themeColor.defaultt,
                    child: ProjectsView(),
                  ),
                  Container(
                    padding: padding,
                    color: Colorss.themeColor.gray50,
                    child: TestimonialView(),
                  ),
                  Container(
                    padding: padding,
                    color: Colorss.themeColor.defaultt,
                    child: GetInTouchView(),
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
      ),
    );
  }
}
