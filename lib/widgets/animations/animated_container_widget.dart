import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  final Widget childWidget;
  const AnimatedContainerWidget({super.key,required this.childWidget});
  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _firstAnimation;
  late Animation<double> _secondAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2), 
      vsync: this
    );
    _firstAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0,0.5)),
    );
    _secondAnimation = Tween<double>(begin: 0,end: -20).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.5)),
    );
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller, 
      builder: (_,__) {
        return Opacity(
          opacity: _firstAnimation.value,
          child: Transform.translate(
            offset: Offset(0, _secondAnimation.value),
            child: widget.childWidget,
          ),
        );
      }
    );
  }
}