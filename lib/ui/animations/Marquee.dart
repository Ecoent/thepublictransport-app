import 'package:flutter/material.dart';

class Marquee extends StatefulWidget {
  final Widget child;
  final Axis direction;
  final Duration animationDuration, backDuration, pauseDuration;

  Marquee({
    @required this.child,
    this.direction: Axis.horizontal,
    this.animationDuration: const Duration(milliseconds: 3000),
    this.backDuration: const Duration(milliseconds: 800),
    this.pauseDuration: const Duration(milliseconds: 800),
  });

  @override
  _MarqueeState createState() => _MarqueeState();
}

class _MarqueeState extends State<Marquee> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scroll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: widget.child,
      scrollDirection: widget.direction,
      controller: scrollController,
    );
  }

  void scroll() async {
    while (true) {
      await Future.delayed(widget.pauseDuration);
      await scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: widget.animationDuration,
          curve: Curves.easeIn);
      await Future.delayed(widget.pauseDuration);
      await scrollController.animateTo(0.0,
          duration: widget.backDuration, curve: Curves.easeOut);
    }
  }
}