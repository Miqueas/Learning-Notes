import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:google_fonts/google_fonts.dart";
void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(child: MySimpleDialog()),
    );
  }
}

class MySimpleDialog extends StatefulWidget {
  const MySimpleDialog({super.key});

  @override
  State<MySimpleDialog> createState() => _MySimpleDialogState();
}

class _MySimpleDialogState extends State<MySimpleDialog> {
  Widget _modalBuilder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
      child: Wrap(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("Compartir",
                style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.download)),
              IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.twitter)),
              IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.instagram)),
              IconButton(onPressed: () {}, icon: const FaIcon(FontAwesomeIcons.facebook)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Image.network("https://www.10wallpaper.com/wallpaper/1200x900/1411/sunset_sparkle-Landscapes_HD_Wallpaper_1200x900.jpg",
              width: 390,
            )
          ),
          Row(
            children: [
              Text("Jhon Doe", style: GoogleFonts.raleway(fontWeight: FontWeight.bold),),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () => showModalBottomSheet<void>(
                  showDragHandle: true,
                  context: context,
                  builder: _modalBuilder,
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}