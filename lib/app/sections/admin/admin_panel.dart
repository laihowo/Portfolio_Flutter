import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mysite/changes/strings.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
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

  Future<void> postDataToFirestore() async {
    // Create an instance of the Firestore database.
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    final city = <String, String>{
      'name': 'Los Angeles',
      'state': 'CA',
      'country': 'USA'
    };

    firestore
        .collection('cities')
        .doc('LA')
        .set(city)
        .onError((e, _) => print('Error writing document: $e'));
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: TextEditingController(text: myName),
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
            controller: TextEditingController(text: animationTxt1),
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
                // Submit the form data.
                postDataToFirestore();
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
