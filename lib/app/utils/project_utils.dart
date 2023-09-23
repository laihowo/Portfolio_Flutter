class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/img/02.png',
    icons: 'assets/img/flutter.png',
    titles: 'YoTeach',
    description: 'This is a educational app by using Vue.js.',
    links: 'https://github.com/',
  ),
  ProjectUtils(
    banners: 'assets/img/01.png',
    icons: 'assets/img/flutter.png',
    titles: 'Badaboom',
    description: 'This is a educational app by using Vue.js.',
    links: 'https://github.com/',
  ),
];
