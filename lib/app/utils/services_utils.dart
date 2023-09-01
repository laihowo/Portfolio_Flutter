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
    icon: 'assets/icons/android.svg',
    description:
        "Are you interested in the great app? Let's make it a reality.",
    tool: ['Quasar', 'jQuery'],
  ),
  ServicesUtils(
    name: 'Firebase',
    icon: 'assets/icons/apple.svg',
    description:
        "Are you interested in the great app? Let's make it a reality.",
    tool: ['Real Time Database', 'Cloud Function'],
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/icons/website.svg',
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
    tool: ['Flutter', 'HTML, CSS, JavaScript'],
  ),
];
