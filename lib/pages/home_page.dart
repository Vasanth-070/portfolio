import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/navigation/nav_bar.dart';

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
  List<Widget> get navButtons {
    return const [
      NavButton(title: 'About'),
      NavButton(title: 'Work'),
      NavButton(title: 'Testimonial'),
      NavButton(title: 'Contact')
    ];
  }

  void listenToScroll() {
    _scrollController.addListener(() {});
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    AppContext.context = context;
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
                  height: 400,
                  color: Colors.white,
                ),
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
                child: const NavBar()),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
