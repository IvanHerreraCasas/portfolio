import 'package:portfolio/models/category.dart';
import 'package:portfolio/models/contact.dart';
import 'package:portfolio/models/skill.dart';
import 'package:portfolio/models/project.dart';

final projects = <Project>[
  //Music app
  const Project(
    title: 'Music App',
    assetName: 'assets/png/mockup_music_app.png',
    description:
        '''Some years ago, the first time I heard about programming, web and mobile development I thought it would be nice to create my own custom app. One that use a lot is a music app, so some weeks ago when I remembered it I decided to make one.
    Music app includes all the features of a music player, the design was inspired by a dribble design.''',
    sourceCodePath: 'https://github.com/Ivan-H-C/music_app',
  ),
  //Todo list
  const Project(
    title: 'Todo list',
    assetName: 'assets/png/mockup_todo_list.png',
    description:
        '''The dilemma of a self programmer … what should I learn now. After debating with myself between design or firebase skills I decided to go with firebase, the portfolio would be for the design.

Todo list app is actually a clone of an app with the same name, I implemented almost all the important features of that complex to-do application, I also did some improvements to the login using flutter-fire ui.''',
    sourceCodePath: 'https://github.com/Ivan-H-C/todo_list_app',
  ),
  //Inventory management
  const Project(
    title: 'Inventory management',
    assetName: 'assets/png/mockup_inventory_management.png',
    description:
        '''At home my parents have a small store (school supplies), and we always were facing problems sometimes we didn’t know the price or stock of a product, other times we didn’t know about sales and purchases of each day. So I decided to create an app to help them.

Inventory management app organize the products in categories and allow add sales and purchases at anytime, updating automatically the stock.''',
    sourceCodePath: 'https://github.com/Ivan-H-C/inventory_management_app',
  ),
  //Cookbook
  const Project(
    title: 'CookBook',
    assetName: 'assets/png/mockup_cookbook.png',
    description:
        '''Recipe app is a beautiful app inspire by this design where people can save their own recipes, the app also comes with some default Peruvian foods.

It was made with Flutter and the data is stored using sqflite(sqflite | Flutter Package )''',
  ),
  //Personal Finace
  const Project(
    title: 'Personal Finance',
    assetName: 'assets/png/mockup_personal_finance.png',
    description:
        '''Personal Finance app was made to help people control incomes, expenses through and schedule payments.

The app includes

Calendar

Line and pie charts

Income and expense categories with custom icons and colors.''',
  ),
  //Anime app
  const Project(
    title: 'Anime app',
    assetName: 'assets/png/mockup_anime.png',
    description:
        '''Anime app is a clone of MyAnimeList(MyAnimeList - Track your anime: anytime, anywhere - Apps en Google Play ). Find popular, seasonal and airing animes, and watch their details (include Youtube trailer).''',
  ),
  //Kotlin SymPy
  const Project(
    title: 'Kotlin SymPy',
    assetName: 'assets/png/mockup_kotlin_sympy.png',
    description: '''Sympy app allows solve complex symbolic mathematical operations using SymPy, a python library.

The app was build using JetPack compose and the operations are calculated on a local server that was made in python using Flask.''',
  ),
  //Kotlin Calculator
  const Project(
    title: 'Kotlin Calculator',
    assetName: 'assets/png/mockup_kotlin_calculator.png',
    description:
        '''Kotlin calculator was my first mobile app, the app is a clone of  Xiaomi scientific calculator. Something that I like of this app is that it shows the result while you’re typing.

Motivation
My motivation for this app was to experiment how is the process of build an app, and get familiarized with Kotlin, read docs, and learn more about strings and their functions.''',
  ),
];

final skillCategories = <SkillCategory>[
  const SkillCategory(
    name: 'Programming languages',
    skills: [
      Skill(
        name: 'Dart',
        svgAssetpath: 'assets/icons/dart.svg',
        description: '''• Intermediate knowledge of dart and currently using it to build flutter apps.''',
        colorValue: 0xFFD6E5FA,
      ),
      Skill(
        name: 'Java',
        svgAssetpath: 'assets/icons/java.svg',
        description: '''• Basic knowledge of Java acquired in a university course.''',
        colorValue: 0xFFFCD1D1,
      ),
      Skill(
        name: 'Kotlin',
        svgAssetpath: 'assets/icons/kotlin.svg',
        description: '''• Intermediate knowledge of kotlin acquired with google codelabs.
• Used to build android apps and to solve some physics problems.''',
        colorValue: 0xFFF0D9FF,
      ),
      Skill(
        name: 'Python',
        svgAssetpath: 'assets/icons/python.svg',
        description: '''• Intermediate knowledge of python and currently using it at university to solve physics problems.
• Build a rest api using flask.''',
        colorValue: 0xFFFDD998,
      ),
    ],
  ),
  const SkillCategory(
    name: 'Frameworks',
    skills: [
      Skill(
        name: 'Flutter',
        svgAssetpath: 'assets/icons/flutter.svg',
        description:
            '''• Advance knowledge of Flutter acquired with videos, articles, documentation and with the experience acquired in the development of 6 apps, including 3 open source projects: Music app, Inventory management app, and Todo list.
• Some used plugins and packages:
    - State management: Riverpod
    - Database: Sqflite, Hive, Firebase.
    - Authentication: Firebase.
    - Http clients: Dio.
    - Services: Audio service, path provider, permision handler.''',
        colorValue: 0xFFD6E5FA,
      ),
      Skill(
        name: 'Kotlin',
        svgAssetpath: 'assets/icons/kotlin.svg',
        description: '''• Basic knowledge of kotlin.
• Developed 2 apps: Kotlin calculator and SymPy app.''',
        colorValue: 0xFFF0D9FF,
      ),
    ],
  ),
  const SkillCategory(
    name: 'Databases',
    skills: [
      Skill(
        name: 'Firebase',
        svgAssetpath: 'assets/icons/firebase.svg',
        description: '''• Intermediate knowledge of Firebase, including cloud firestore and authentication.
• Used in 2 projects: Inventory management app and Todo List.''',
        colorValue: 0xFFFFC898,
      ),
      Skill(
        name: 'MySQL',
        svgAssetpath: 'assets/icons/mysql.svg',
        description: '''• Basic knowledge of MySQL acquired in the process of creating a MySQL server to control the inventory of a small business.''',
        colorValue: 0xFFD3DEDC,
      ),
    ],
  ),
  const SkillCategory(
    name: 'Version control and project management',
    skills: [
      Skill(
        name: 'Git',
        svgAssetpath: 'assets/icons/git.svg',
        description: '• Basic knowledge of Git.',
        colorValue: 0xFFFF7878,
      ),
      Skill(
        name: 'Jira',
        svgAssetpath: 'assets/icons/jira.svg',
        description: '• Currently learning Jira.',
        colorValue: 0xFF9AD0EC,
      ),
    ],
  )
];

final contacts = <Contact>[];

const String kname = 'Ivan Herrera Casas';

const String kabout = '''A 20 years old self-taught programmer, physics student and flutter enthusiast.

I'm looking for an intern or entry position in a mobile development company.''';
