import "dart:convert";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:url_launcher/url_launcher.dart";

void main() => runApp(const App());

class GithubUser {
  static const _baseUrl = "https://api.github.com/users/";
  String _userName;

  set userName(String newUserName) { _userName = newUserName; }

  bool success = false;
  String? name;
  String? bio;
  String? link;
  String? avatarUrl;
  int? followers;
  int? repositories;


  GithubUser(this._userName);

  Future<bool> fetch() async {
    final response = await http.get(Uri.parse(_baseUrl + _userName));

    if (response.statusCode != 200) {
      return success = false;
    }

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

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(title: const Text("HTTP - Get")),
          body: const HomePage(),
        ),
      )
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  final _user = GithubUser("");

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: _user.fetch(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }

                if (snapshot.data!) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            _user.avatarUrl!,
                            width: 160,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _user.name ?? "(no name)",
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 320,
                              child: Text(_user.bio ?? "(no bio)",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 6),
                                    child: Icon(Icons.code),
                                  ),
                                  Text("Repositories: ${_user.repositories}"),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 18, right: 6),
                                    child: Icon(Icons.people),
                                  ),
                                  Text("Followers: ${_user.followers}"),
                                ],
                              ),
                            ),
                            TextButton.icon(
                              icon: const Icon(Icons.link),
                              label: const Text("See on Github"),
                              onPressed:() async {
                                if (!await launchUrl(Uri.parse(_user.link!))) {
                                  throw Exception("Could not launch URL: ${_user.link}");
                                }
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  );
                } else {
                  return const Text(
                    "User not found :(",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: "Username",
                  helperText: "Enter a GitHub username and press \"Enter\"",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (value) {
                  _controller.clear();
              
                  setState(() { _user.userName = value; });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}