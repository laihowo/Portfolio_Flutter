import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> getDataFromFirestore() async {
  // Create an instance of the Firestore database.
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Get a reference to the `users` collection.
  final CollectionReference usersCollection = firestore.collection('users');

  // Get a reference to the document with the ID `YOUR_DOCUMENT_ID`.
  final DocumentReference userDocumentReference = usersCollection.doc('admin');

  // Get the data of the document.
  final DocumentSnapshot userDocumentSnapshot =
      await userDocumentReference.get();

  // Use the data of the document.
  final String myName = userDocumentSnapshot['Name'];
  final String animationTxt1 = userDocumentSnapshot['Animation_Text'];

  return myName;
}

String helloTag = '''\nHello World, Welcome to My Space  ''';

String myName = 'Benny LAI';
String myNameTag = "I'm $myName,";

String animationTxt1 = 'Web Developer';
String animationTxt2 = '';
String animationTxt3 = '';

String servicesHeading = '\nWhat I can do?';
String servicesSubHeading =
    'Since the beginning of my journey as a web developer, '
    "I've worked in universities and collaborated with talented people "
    'to create educational products for both business and consumer use. '
    'I offer a wide range of services, including programming.';

String miniDescription =
    "Providing services for programming needs. Join me down below and let's get started!";

String portfolioSubHeading =
    'Since the beginning of my journey as a web developer, '
    'I have created educational products for business and consumer use. This is a little bit.';

String contactHeading = 'Let’s try my service now!';
String contactSubHeading =
    'Let’s work together and make everything super useful.';

String contactSectionHeading = '\nGet in Touch';
String contactSectionSubHeading =
    'If you want to try my services, you can contact me at the links below.';

// About Me
/*
const String aboutMeHeadline =
    'I\'m $myName, a Web developer.';
const String aboutMeDetail =
    'I\'m a Fresh Graduate as Software Engineer from Flutter University, UK. '
    'I have been developing apps for over 4 years now. '
    'I have worked in teams for various startups and helped them in launching '
    'their prototypes and got valuable learning experience. '
    'Been a CEO/Co-Founder of My Company. '
    'Currently working as an Associate Software Engineer at My Company.';
*/
