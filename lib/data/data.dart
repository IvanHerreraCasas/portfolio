import 'package:portfolio/models/contact.dart';
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
    description: '''Kotlin calculator was my first mobile app, the app is a clone of  Xiaomi scientific calculator. Something that I like of this app is that it shows the result while you’re typing.

Motivation
My motivation for this app was to experiment how is the process of build an app, and get familiarized with Kotlin, read docs, and learn more about strings and their functions.''',
  ),
];

final contacts = <Contact>[];

const String kname = '';

const String kabout = '';
