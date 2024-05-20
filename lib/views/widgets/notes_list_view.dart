import 'package:flutter/material.dart';

import 'custom/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  final dataColor = const [
    Color(0xffFFCC80),
    Color(0xffE7E896),
    Color(0xff76D6EE),
    Color(0xff7C5F80),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: NoteItem(
              color: dataColor[index % dataColor.length],
            ),
          );
        },
      ),
    );
  }
}
