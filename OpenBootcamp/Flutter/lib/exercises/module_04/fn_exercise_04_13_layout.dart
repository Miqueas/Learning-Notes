import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

part 'fn_exercise_04_13_layout.expanded.dart';
part 'fn_exercise_04_13_layout.padding.dart';
part 'fn_exercise_04_13_layout.divider.dart';

final class FnExercise0413Layout extends StatefulWidget {
  const FnExercise0413Layout({ super.key });

  @override
  State<FnExercise0413Layout> createState() => _FnExercise0413LayoutState();
}

final class _FnExercise0413LayoutState extends State<FnExercise0413Layout> {
  final _controller = PageController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {}));
    SchedulerBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(children: [
    Expanded(child: Row(children: [
      const Gap(8),
      Center(child: IconButton.filledTonal(
        icon: const Icon(Icons.chevron_left_rounded),
        onPressed: () => _controller.previousPage(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 150),
        ),
      ),),
      const Gap(8),
      Expanded(child: PageView(controller: _controller, children: const [
        FnExpandedLayout(),
        FnPaddingLayout(),
        FnDividerLayout(),
      ],),),
      const Gap(8),
      Center(child: IconButton.filledTonal(
        icon: const Icon(Icons.chevron_right_rounded),
        onPressed: () => _controller.nextPage(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 150),
        ),
      ),),
      const Gap(8),
    ],),),
    const Gap(8),
    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        radius: 4,
        backgroundColor: switch (_controller.positions.isNotEmpty) {
          false => Theme.of(context).colorScheme.onSurface,
          true => switch (_controller.page) {
            0 => Theme.of(context).colorScheme.primaryContainer,
            _ => Theme.of(context).colorScheme.onSurface,
          },
        }
      ),
      const Gap(8),
      CircleAvatar(
        radius: 4,
        backgroundColor: switch (_controller.positions.isNotEmpty) {
          false => Theme.of(context).colorScheme.onSurface,
          true => switch (_controller.page) {
            1 => Theme.of(context).colorScheme.primaryContainer,
            _ => Theme.of(context).colorScheme.onSurface,
          },
        }
      ),
      const Gap(8),
      CircleAvatar(
        radius: 4,
        backgroundColor: switch (_controller.positions.isNotEmpty) {
          false => Theme.of(context).colorScheme.onSurface,
          true => switch (_controller.page) {
            2 => Theme.of(context).colorScheme.primaryContainer,
            _ => Theme.of(context).colorScheme.onSurface,
          },
        }
      ),
    ],),
    const Gap(8),
    AnimatedSwitcher(
      duration: const Duration(milliseconds: 150),
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: SizeTransition(sizeFactor: animation, child: child,),
      ),
      child: switch (_controller.positions.isNotEmpty) {
        false => null,
        true => switch (_controller.page) {
          0 => const Center(child: Text('Expanded',
            style: TextStyle(fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),),
          1 => const Center(child: Text('Padding',
            style: TextStyle(fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),),
          2 => const Center(child: Text('Divider',
            style: TextStyle(fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),),
          _ => const Center(child: Text(''),),
        },
      },
    ),
    const Gap(8),
  ],);
}