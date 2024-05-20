import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

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
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(
                  note: notes[index],
                  color: dataColor[index % dataColor.length],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
