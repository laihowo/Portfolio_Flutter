class ContactUtils {
  final String url;
  final String icon;

  ContactUtils({required this.url, required this.icon});
}

List<ContactUtils> contactUtils = [
  ContactUtils(
      url: 'https://github.com/laihowo',
      icon: 'https://img.icons8.com/small/64/github.png'),
  ContactUtils(
      url: 'https://linkedin.com/in/laihowo',
      icon: 'https://img.icons8.com/small/64/linkedin.png'),
  ContactUtils(
      url: 'mailto:howo0707@gmail.com',
      icon: 'https://img.icons8.com/office/64/email.png'),
];
