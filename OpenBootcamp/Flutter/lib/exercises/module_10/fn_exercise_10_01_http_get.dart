import "package:gap/gap.dart";
import "package:url_launcher/url_launcher.dart";
import "package:http/http.dart" as http;
import "package:flutter/material.dart";
import "dart:convert";

final class GithubUser {
  static const _baseUrl = "https://api.github.com/users/";

  String username;
  String? name;
  String? bio;
  String? link;
  String? avatarUrl;
  bool success = false;
  int? followers;
  int? repositories;

  GithubUser(this.username);

  Future<bool> fetch() async {
    final response = await http.get(Uri.parse(_baseUrl + username));

    if (response.statusCode != 200) return success = false;

    final json = jsonDecode(response.body);

    name = json["name"];
    bio = json["bio"];
    link = json["html_url"];
    avatarUrl = json["avatar_url"];
    followers = json["followers"];
    repositories = json["public_repos"];

    return success = true;
  }
}

final class FnExercise1001HttpGet extends StatefulWidget {
  const FnExercise1001HttpGet({super.key});

  @override
  State<FnExercise1001HttpGet> createState() => _FnExercise1001HttpGetState();
}

final class _FnExercise1001HttpGetState extends State<FnExercise1001HttpGet> {
  final _controller = TextEditingController();
  final _user = GithubUser('');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Center(child: Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 150),
          child: switch (_user.username.isEmpty) {
            true => const Text('No user choosen yet',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            false => FutureBuilder(
              future: _user.fetch(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const CircularProgressIndicator();
        
                if (!snapshot.data!) {
                  return const Text('User not found :(',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
        
                return Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(_user.avatarUrl!,
                      fit: BoxFit.cover,
                      width: 160,
                    ),
                  ),
                  const Gap(16),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(_user.name ?? '(no name)',
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(_user.bio ?? '(no bio)',
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                      const Gap(8),
                      Row(children: [
                        const Icon(Icons.code),
                        const Gap(8),
                        Text("Repositories: ${_user.repositories}"),
                      ],),
                      Row(children: [
                        const Icon(Icons.people),
                        const Gap(8),
                        Text("Followers: ${_user.followers}"),
                      ],),
                      const Gap(8),
                      TextButton.icon(
                        icon: const Icon(Icons.link),
                        label: const Text("See on Github"),
                        onPressed:() async {
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
                            launchUrl(Uri.parse(_user.link!));
                          }
                        },
                      )
                    ],
                  ),),
                ],);
              },
            ),
          },
        ),
        const Gap(8),
        Row(children: [
          Expanded(child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: "Enter a Github username",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
            ),
            onSubmitted: _onSearchUsername,
          ),),
          const Gap(8),
          IconButton.filled(
            icon: const Icon(Icons.search),
            onPressed: () => _onSearchUsername(_controller.text.trim()),
          ),
        ],),
      ],
    ),
  ),);

  void _onSearchUsername(value) {
    _controller.clear();
    setState(() { _user.username = value; });
  }
}