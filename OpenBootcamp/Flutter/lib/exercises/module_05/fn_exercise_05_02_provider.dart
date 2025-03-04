import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:provider/provider.dart";

final class CountProvider extends ChangeNotifier {
  var count = 0;

  CountProvider(count);

  void increment() {
    ++count;
    notifyListeners();
  }
}

final class FnExercise0502Provider extends StatelessWidget {
  const FnExercise0502Provider({ super.key });

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (_) => CountProvider(0),
    child: Builder(builder: (context) {
      final countProvider = Provider.of<CountProvider>(context);

      return Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${countProvider.count}"),
          const Gap(8),
          IconButton.filled(
            onPressed: countProvider.increment,
            icon: const Icon(Icons.add),
          ),
        ],
      ),);
    },),
  );
}