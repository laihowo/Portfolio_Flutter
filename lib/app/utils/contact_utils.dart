import 'package:mysite/changes/links.dart';

class ContactUtils {
  final String url;
  final String icon;

  ContactUtils({required this.url, required this.icon});
}

List<ContactUtils> contactUtils = [
  ContactUtils(
      url: gitHub,
      icon: 'https://img.icons8.com/ios-glyphs/64/000000/github.png'),
  ContactUtils(
      url: linkedin,
      icon: 'https://img.icons8.com/ios-filled/64/000000/linkedin.png'),
  ContactUtils(
      url: email,
      icon: 'https://img.icons8.com/ios-glyphs/64/000000/email.png'),
];
