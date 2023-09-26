import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mysite/changes/strings.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('Hello Admin'),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: MyForm(),
          ),
        ]);
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController(text: myName);
  final _animationTxtController = TextEditingController(text: animationTxt1);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'My Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your value.';
              }
              return null;
            },
            cursorHeight: 15,
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _animationTxtController,
            decoration: InputDecoration(
              labelText: 'Animation Text',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your value.';
              }
              return null;
            },
            cursorHeight: 15,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Submit the form data to Firestore.
                _submitFormDataToFirestore();
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

  Future<void> _submitFormDataToFirestore() async {
    // Get the form data.
    final String name = _nameController.text;
    final String animationTxt = _animationTxtController.text;

    // Create an instance of the Firestore database.
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Create a new document in the `users` collection.
    final DocumentReference documentReference =
        firestore.collection('users').doc('admin');

    // Set the data of the document.
    final Map<String, String> data = {
      'Name': name,
      'Animation_Text': animationTxt,
    };

    // Save the document.
    await documentReference.set(data);
  }
}
