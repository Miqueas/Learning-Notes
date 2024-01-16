import "package:flutter/cupertino.dart";

const appTitle = "Flutter OpenBootcamp";

// Cambia entre los diferentes widgets, puesto que en ésta clase el instructor abarcó varios temas
void main() => runApp(const MyCupertinoNavigationBar());

class MyCupertinoPageScaffold extends StatelessWidget {
  const MyCupertinoPageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: CupertinoPageScaffold(
        child: Center(
          child: Text("Hello, world!")
        ),
      ),
    );
  }
}

class MyCupertinoTabScaffold extends StatelessWidget {
  const MyCupertinoTabScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
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
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0: {
              return const CupertinoPageScaffold(
                child: Center(
                  child: Text("Home"),
                ),
              );
            }

            case 1: {
              return const CupertinoPageScaffold(
                child: Center(
                  child: Text("Explore"),
                ),
              );
            }

            case 2: {
              return const CupertinoPageScaffold(
                child: Center(
                  child: Text("Account"),
                ),
              );
            }

            default: {
              return const CupertinoPageScaffold(
                child: Center(
                  child: Text("Main view"),
                )
              );
            }
          }
        },
      ),
    );
  }
}

class MyCupertinoNavigationBar extends StatelessWidget {
  const MyCupertinoNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          middle: Center(child: Text("Title")),
          trailing: Icon(CupertinoIcons.settings),
        ),
        child: Center(
          child: Text("Content"),
        ),
      ),
    );
  }
}