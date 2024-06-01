import "package:flutter/material.dart";

final class ListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String page;

  static const _titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  const ListItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: _titleStyle),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
      onTap: () {
        Navigator.of(context).pushNamed(page);
      },
    );
  }
}