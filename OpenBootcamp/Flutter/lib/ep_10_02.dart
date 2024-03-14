import "dart:convert";
import "dart:io";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GithubUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Requests")),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Username",
                  helperText: "Any Github username, then press enter",
                  border: OutlineInputBorder()
                ),
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    user = GithubUser(value);
                    user.fetch().then((_) {
                      setState(() {});
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

final class GithubUser {
  static const baseUrl = "https://api.github.com/users/";
  final String _userName;

  String? name;
  String? bio;
  String? link;
  String? avatarUrl;

  GithubUser(this._userName);

  Future<void> fetch() async {
    final uri = Uri.parse(baseUrl + _userName);
    final res = await http.get(uri);

    if (res.statusCode != 200) {
      throw HttpException("Something went wrong fetching user data.", uri: uri);
    }

    final obj = jsonDecode(res.body);

    name = obj["name"];
    bio = obj["bio"];
    link = obj["html_url"];
    avatarUrl = obj["avatar_url"];
  }
}