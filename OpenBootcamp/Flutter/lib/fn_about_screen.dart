import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

final class FnAboutScreen extends StatelessWidget {
  const FnAboutScreen({ super.key });

  @override
  Widget build(BuildContext context) => Material(child: Scaffold(
    appBar: AppBar(title: const Text('About', style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),),),
    body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      const Text('Flutter Notes', style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w900,
      ),),
      const Text('A simple app made while I was learning Flutter',),
      const SizedBox(
        width: 200,
        child: Divider(thickness: 1, height: 24,),
      ),
      Row(mainAxisSize: MainAxisSize.min, children: [
        const Text('By',),
        const Gap(8),
        GestureDetector(
          onTap: () async {
            final ok = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Open Github profile?',),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text('Open'),
                  ),
                ],
              ),
            );
    
            if (ok == true) {
              launchUrl(Uri.parse('https://github.com/Miqueas'));
            }
          },
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            const CircleAvatar(
              radius: 12,
              foregroundImage: AssetImage('assets/images/me.jpg'),
            ),
            const Gap(8),
            Text('Josué Martínez', style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),),
          ],),
        ),
      ],)
    ],),),
  ),);
}