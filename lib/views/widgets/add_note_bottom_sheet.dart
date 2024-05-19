import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'custom_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 16),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 120,
            ),
            CustomBotton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
