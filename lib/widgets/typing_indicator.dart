import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypingIndicator extends StatefulWidget {
  const TypingIndicator({super.key});

  @override
  State<TypingIndicator> createState() => _TypingIndicator();
}

class _TypingIndicator extends State<TypingIndicator>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bubble;

  @override
  void initState() {
    super.initState();

    _bubble = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _bubble.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return AnimatedBuilder(
          animation: _bubble,
          builder: (context, child) {
            double offset = (_bubble.value + (index * 0.2)) % 1;
            double scale = 0.5 + (offset * 0.5);

            return Transform.scale(
              scale: scale,
            child :Container(
              margin: const EdgeInsets.all(1),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CupertinoColors.systemRed
              ),
            ),
            );
          },
        );
      }),
    );
  }
}
