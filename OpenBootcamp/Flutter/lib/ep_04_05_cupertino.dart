import "package:flutter/cupertino.dart";

// Cambia entre los diferentes widgets, puesto que en ésta clase el instructor abarcó varios temas
void main() => runApp(const NavigationBar());

class PageScaffold extends StatelessWidget {
  const PageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
        child: Center(
          child: Text("Hello, world!")
        ),
      ),
    );
  }
}

class TabScaffold extends StatelessWidget {
  const TabScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
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

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
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