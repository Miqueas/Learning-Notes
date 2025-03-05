import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:google_fonts/google_fonts.dart";

final class FnExercise0604NetworkImage extends StatefulWidget {
  const FnExercise0604NetworkImage({super.key});

  @override
  State<FnExercise0604NetworkImage> createState()
    => _FnExercise0604NetworkImageState();
}

final class _FnExercise0604NetworkImageState
extends State<FnExercise0604NetworkImage>
{
  Widget _modalBuilder(BuildContext context) => Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
    child: Wrap(children: [
      Center(child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text("Share",
          style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
        ),
      ),),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: const Icon(Icons.download,),
          onPressed: () {},
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.twitter,),
          onPressed: () {},
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.instagram,),
          onPressed: () {},
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.facebook,),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert,),
          onPressed: () {},
        ),
      ],),
    ],),
  );

  @override
  Widget build(BuildContext context) => Center(child: SizedBox(
    width: 400,
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Image.network(
          'https://www.10wallpaper.com/wallpaper/1200x900/1411/sunset_sparkle-Landscapes_HD_Wallpaper_1200x900.jpg',
          width: 390,
        )
      ),
      Row(children: [
        Text("Jhon Doe",
          style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite,),),
        IconButton(
          icon: const Icon(Icons.share),
          onPressed: () => showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: _modalBuilder,
          ),
        )
      ],),
    ],),
  ),);
}