import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "describition of the note",
                style: TextStyle(
                  color: const Color.fromARGB(182, 0, 0, 0),
                  fontSize: 16,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                color: (Colors.black),
                size: 25,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Text(
              "sep14, 2025",
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(182, 0, 0, 0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
