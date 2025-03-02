import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/scheduler.dart";
import "package:gap/gap.dart";

final class FnExercise0405Cupertino extends StatefulWidget {
  const FnExercise0405Cupertino({ super.key });

  @override
  State<FnExercise0405Cupertino> createState() => _FnExercise0405CupertinoState();
}

final class _FnExercise0405CupertinoState
extends State<FnExercise0405Cupertino>
{
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
        CupertinoAppWithPageScaffold(),
        CupertinoAppWithTabScaffold(),
        CupertinoAppWithNavigationBar(),
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
          0 => const Center(child: Text('Page Scaffold',
            textAlign: TextAlign.center,),
          ),
          1 => const Center(child: Text('Tab Scaffold',
            textAlign: TextAlign.center,),
          ),
          2 => const Center(child: Text('Navigation Bar',
            textAlign: TextAlign.center,),
          ),
          _ => const Center(child: Text(''),),
        },
      },
    ),
    const Gap(8),
  ],);
}

final class CupertinoAppWithPageScaffold extends StatelessWidget {
  const CupertinoAppWithPageScaffold({super.key});

  @override
  Widget build(BuildContext context) => const CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: CupertinoPageScaffold(
      child: Center(child: Text("Hello, world!"),),
    ),
  );
}

final class CupertinoAppWithTabScaffold extends StatelessWidget {
  const CupertinoAppWithTabScaffold({super.key});

  @override
  Widget build(BuildContext context) => CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.compass),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: "Account",
        ),
      ],),
      tabBuilder: (context, index) => switch (index) {
        0 => const CupertinoPageScaffold(
          child: Center(child: Text("Home"),),
        ),
        1 => const CupertinoPageScaffold(
          child: Center(child: Text("Explore"),),
        ),
        2 => const CupertinoPageScaffold(
          child: Center(child: Text("Account"),),
        ),
        _ => const CupertinoPageScaffold(
          child: Center(child: Text("Main view"),),
        ),
      },
    ),
  );
}

final class CupertinoAppWithNavigationBar extends StatelessWidget {
  const CupertinoAppWithNavigationBar({super.key});

  @override
  Widget build(BuildContext context) => const CupertinoApp(
    debugShowCheckedModeBanner: false,
    home: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.back),
        middle: Center(child: Text("Title")),
        trailing: Icon(CupertinoIcons.settings),
      ),
      child: Center(child: Text("Content"),),
    ),
  );
}