class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Vue.js',
    icon: 'https://img.icons8.com/color/64/vue-js.png',
    description:
        "Are you interested in the great website? Let's make it a reality.",
    tool: ['Quasar', 'HTML CSS JavaScript'],
  ),
  ServicesUtils(
    name: 'Firebase',
    icon: 'https://img.icons8.com/color/64/firebase.png',
    description:
        "Are you interested in the great backend? Let's make it a reality.",
    tool: ['Real Time Database', 'Cloud Function'],
  ),
  ServicesUtils(
    name: 'Flutter',
    icon: 'https://img.icons8.com/color/64/flutter.png',
    description:
        "Do you have an idea for your next great platform? Let's make it a reality.",
    tool: ['Cross Platform Development', 'Dart'],
  ),
];
