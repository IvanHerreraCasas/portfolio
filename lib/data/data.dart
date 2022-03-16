import 'package:portfolio/models/category.dart';
import 'package:portfolio/models/contact.dart';
import 'package:portfolio/models/skill.dart';
import 'package:portfolio/models/project.dart';

final projects = <Project>[
  //Music app
  const Project(
    title: 'Music App',
    assetName: 'assets/mockups/music_app.png',
    description:
        '''Some years ago, the first time I heard about programming, web and mobile development I thought it would be nice to create my own custom app. One that use a lot is a music app, so some weeks ago when I remembered it I decided to make one.
        
Music app includes all the features of a music player: play, pause, seek, shuffle, repeat, play in background, etc.
        
The design was inspired by [this beautiful design](https://dribbble.com/shots/9173692-Music-App).''',
    sourceCodePath: 'https://github.com/IvanHerreraCasas/music_app',
  ),
  //Flutter planner
  const Project(
      title: 'Flutter Planner',
      assetName: 'assets/mockups/flutter_planner.png',
      description:
          '''A personal planner app was one of my first app ideas before I started with programming, a desktop app that help people to control their schedule, some personal projects, tasks, notes, economy, etc.

Some weeks ago finally windows support arrived to Flutter, together with my desire to learn about flutter bloc and a new database called isar; I decided to build Flutter planner.

Flutter Planner is a basic implementation of that initial idea where people can add projects with description written in markdown, and schedule their activities.
    ''',
      sourceCodePath: 'https://github.com/IvanHerreraCasas/flutter_planner'),
  //Todo list
  const Project(
    title: 'To-Do List',
    assetName: 'assets/mockups/todo_list.png',
    description:
        '''The dilemma of a self programmer … what should I learn now. After debating with myself between design or firebase skills I decided to go with firebase.
        
Todo list app is actually a clone of [an app with the same name](https://play.google.com/store/apps/details?id=todolist.scheduleplanner.dailyplanner.todo.reminders&hl=en_US&gl=US), I implemented almost all the important features of that complex to-do application and did some improvements to the login using flutter-fire ui.''',
    sourceCodePath: 'https://github.com/IvanHerreraCasas/todo_list_app',
  ),
  //Inventory management
  const Project(
    title: 'Inventory management',
    assetName: 'assets/mockups/inventory_management.png',
    description:
        '''At home my parents have a small store (school supplies), and we always were facing problems, sometimes we didn't know the price or stock of a product, other times we didn't know about sales and purchases of each day. So I decided to create an app to help them.
        
Inventory management app organize the products in categories and allow add sales and purchases at anytime, updating automatically the stock.
        
The app was builded using firebase.''',
    sourceCodePath:
        'https://github.com/IvanHerreraCasas/inventory_management_app',
  ),
  //Cookbook
  const Project(
    title: 'CookBook',
    assetName: 'assets/mockups/cookbook.png',
    description:
        '''After looking at the typical tutorial of a To-Do app, I decided to make my own Flutter app then I realized that a recipes app would be very similar to a To-Do one, so I decided to make CookBook.
        
Cookbook was my first Flutter app, a beautiful app inspired by [this dribble design](https://dribbble.com/shots/7077306-Recipe-App-Concept), where people can save their own recipes.
        
The app comes with some default Peruvian food, and use sqflite to store the data.''',
  ),
  //Personal Finance
  const Project(
    title: 'Personal Finance',
    assetName: 'assets/mockups/personal_finance.png',
    description:
        '''Personal Finance app was made to help people control their incomes, expenses and schedule their payments.

The app includes:

- Calendar.
- Pie charts.
- Income and expense categories with custom icons and colors.''',
  ),
  //Anime app
  const Project(
    title: 'Anime app',
    assetName: 'assets/mockups/anime.png',
    description:
        '''Anime app is a basic clone of [MyAnimeList](https://play.google.com/store/apps/details?id=net.myanimelist.app&hl=es_US&gl=US). 
        
There people can find popular, seasonal and airing animes, and watch their details, includes Youtube trailers.
        
The app use [Jikan](https://docs.api.jikan.moe/) to get the data.''',
  ),
  //Kotlin SymPy
  const Project(
    title: 'Kotlin SymPy',
    assetName: 'assets/mockups/kotlin_sympy.png',
    description:
        '''Sympy app allows to solve complex symbolic mathematical operations using SymPy, a python library.

The app was build using JetPack compose and the operations are calculated on a local server that was made in python using Flask.''',
  ),
  //Kotlin Calculator
  const Project(
    title: 'Kotlin Calculator',
    assetName: 'assets/mockups/kotlin_calculator.png',
    description:
        '''Kotlin calculator was my first mobile app, the app is a clone of  [Xiaomi scientific calculator](https://play.google.com/store/apps/details?id=com.miui.calculator&hl=es&gl=US). 
        
Something that I like of this app is that it shows the result while you're typing.
        
The motivation was to experiment how is the process of build an app, and get familiarized with Kotlin, read docs, and learn more about strings and their functions.''',
  ),
];

final skillCategories = <SkillCategory>[
  const SkillCategory(
    name: 'Programming languages',
    skills: [
      Skill(
        name: 'Dart',
        svgAssetpath: 'assets/icons/dart.svg',
        description:
            '''- Intermediate knowledge of dart and currently using it to build flutter apps.''',
        colorValue: 0xFFD6E5FA,
      ),
      Skill(
        name: 'Java',
        svgAssetpath: 'assets/icons/java.svg',
        description:
            '''- Basic knowledge of Java acquired in a university course.''',
        colorValue: 0xFFFCD1D1,
      ),
      Skill(
        name: 'Kotlin',
        svgAssetpath: 'assets/icons/kotlin.svg',
        description:
            '''- Intermediate knowledge of kotlin acquired with google codelabs.
- Used to build android apps and to solve some physics problems.''',
        colorValue: 0xFFF0D9FF,
      ),
      Skill(
        name: 'Python',
        svgAssetpath: 'assets/icons/python.svg',
        description:
            '''- Intermediate knowledge of python and currently using it at university to solve physics problems.
- Build a rest api using flask.''',
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
            '''- Advance knowledge of Flutter acquired with videos, articles, documentation and with the experience on the development of 6 apps.
- Some used plugins and packages:
    - State management: Bloc, Riverpod
    - Database: Firebase, Isar, Hive, Sqflite.
    - Authentication: Firebase.
    - Http clients: Dio.
    - Services: Audio service, path provider, permision handler.''',
        colorValue: 0xFFD6E5FA,
      ),
      Skill(
        name: 'Kotlin',
        svgAssetpath: 'assets/icons/kotlin.svg',
        description: '''- Basic knowledge of kotlin.
- Developed 2 apps: Kotlin calculator and SymPy app.''',
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
        description:
            '''- Intermediate knowledge of Firebase, including cloud firestore and authentication.
- Used in 2 projects: Inventory management app and Todo List.''',
        colorValue: 0xFFFFC898,
      ),
      Skill(
        name: 'MySQL',
        svgAssetpath: 'assets/icons/mysql.svg',
        description:
            '''- Basic knowledge of MySQL acquired in the process of creating a MySQL server to control the inventory of a small business.''',
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
        description: '- Basic knowledge of Git.',
        colorValue: 0xFFFF7878,
      ),
      Skill(
        name: 'Jira',
        svgAssetpath: 'assets/icons/jira.svg',
        description: '- Currently learning Jira.',
        colorValue: 0xFF9AD0EC,
      ),
    ],
  )
];

final contacts = <Contact>[
  const Contact(
    brandCodePoint: 0xf09b,
    link: 'https://github.com/IvanHerreraCasas',
  ),
  const Contact(
    brandCodePoint: 0xf099,
    link: 'https://twitter.com/ivanhc_pp',
  )
];

const String kname = 'Ivan Herrera Casas';

const String kabout =
    '''A 20 years old self-taught programmer, physics student and flutter enthusiast.''';

const String kAssetPicturePath = 'assets/profile.jpg';
