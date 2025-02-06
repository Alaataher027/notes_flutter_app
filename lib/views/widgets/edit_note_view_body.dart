import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title!,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.content!,
            maxLines: 5,
          ),
          SizedBox(
            height: 20,
          ),
          EditNotesColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

