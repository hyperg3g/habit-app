import 'package:flutter/material.dart';

class CreateHabitForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Title',
              ),
              validator: (String value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Description',
                labelText: 'Title',
              ),
              validator: (String value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            DropdownButton<String>(
              value: 'Low',
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              underline: Container(
                height: 1,
                color: Colors.grey,
              ),
              onChanged: (_) => {},
              items: [
                DropdownMenuItem<String>(
                  value: 'Low',
                  child: Text('Low'),
                ),
                DropdownMenuItem<String>(
                  value: 'Medium',
                  child: Text('Medium'),
                ),
                DropdownMenuItem<String>(
                  value: 'High',
                  child: Text('High'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
