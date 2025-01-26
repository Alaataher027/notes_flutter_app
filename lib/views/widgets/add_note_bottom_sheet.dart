import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(
                hint: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: "Content",
                maxLines: 5,
              ),
              SizedBox(
                height: 50,
              ),
              // Spacer(), can't use it with SingleChildScrollView
              CustomButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

