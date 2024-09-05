import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/features/detailed_beach_view_page.dart';

class OutwardArrow extends ConsumerStatefulWidget {
  final Map<String, String> beachInfo;
  const OutwardArrow(this.beachInfo, {super.key});

  @override
  ConsumerState<OutwardArrow> createState() => _OutwardArrowState();
}

class _OutwardArrowState extends ConsumerState<OutwardArrow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_outward_rounded,
            size: 28,
          ),
          splashRadius: 30,
          color: Colors.black,
          onPressed: () async {
            Navigator.push(
              context,
              PageTransition(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                type: PageTransitionType.fade,
                child: DetailedBeachView(
                  beachInfo: widget.beachInfo,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
