import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final List<Color> data = const [
    Color.fromARGB(255, 252, 223, 135),
    Color.fromARGB(255, 141, 225, 184),
    Color.fromARGB(255, 160, 179, 255),
    Color.fromARGB(255, 239, 163, 139)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20, // Change to your desired number of items
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: NoteItem(color: data[index % data.length]),
        );
      },
    );
  }
}
