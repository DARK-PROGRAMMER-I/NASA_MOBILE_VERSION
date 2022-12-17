import 'package:flutter/material.dart';

class MyRotationAnimation extends StatefulWidget {
  final Widget animationWidget;

  const MyRotationAnimation({super.key, required this.animationWidget});
  @override
  _MyRotationAnimationState createState() => _MyRotationAnimationState();
}

class _MyRotationAnimationState extends State<MyRotationAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..forward()
      ..addListener(() {
        if (_animationController.isCompleted) {
          _animationController.repeat();
        }
      })
    ;

    // Set up the animation using a CurvedAnimation
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    );

    // Start the animation
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 360.0),
      duration: Duration(seconds: 500),
      builder: (BuildContext context, double rotation, child) {
        return Transform.rotate(
          angle: rotation,
          child: child,
        );
      },
      child: widget.animationWidget,
    );
  }
}
