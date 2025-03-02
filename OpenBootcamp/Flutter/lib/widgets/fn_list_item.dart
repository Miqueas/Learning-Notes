import "package:flutter/material.dart";

final class FnListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String route;

  static const _titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  const FnListItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.route,
  });

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text(title, style: _titleStyle),
    subtitle: Text(subtitle),
    trailing: const Icon(Icons.chevron_right_rounded),
    contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
    onTap: () {
      Navigator.of(context).pushNamed(route);
    },
  );
}