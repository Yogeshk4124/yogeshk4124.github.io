import 'package:event_hub/event_hub.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Models/InfoPanelModels.dart';
import 'package:portfolio/Models/Skill.dart';

import '../Models/project.dart';

EventHub eventHub = EventHub();
Map<String, Skill> mySkills = {
  'Python': Skill(
    title: [
      'The Joy of Computing using Python',
    ],
    subheading: [
      'By NPTEL',
    ],
    body: [
      'Offered by IIT Ropar. A introductory course for learning python.',
    ],
    buttonText: [
      'View Certificate',
    ],
  ),
  'HTML': Skill(
    title: [
      'HTML, CSS and JavaScript for Web Developer',
      'Programmer Clock',
    ],
    subheading: [
      'By Coursera',
      'Project',
    ],
    body: [
      'Offered by Johns Hopkins University. A introductory course for web development.',
      'Programmer Clock is a clock with weather forecast.',
    ],
    buttonText: [
      'View Certificate',
      'View Website',
    ],
  ),
  'C++': Skill(
    title: [
      'Algorithmic Toolbox',
    ],
    subheading: [
      'By Coursera',
    ],
    body: [
      'The course covers basic algorithmic techniques and ideas for computational problems arising frequently in practical applications: sorting and searching, divide and conquer, greedy algorithms, dynamic programming.',
    ],
    buttonText: [
      'View Certificate',
    ],
  ),
  'JavaScript': Skill(
    title: [
      'HTML, CSS and JavaScript for Web Developer',
      'Programmer Clock',
    ],
    subheading: [
      'By Coursera',
      'Project',
    ],
    body: [
      'Offered by Johns Hopkins University. A introductory course for web development.',
      'Programmer Clock is a clock with weather forecast.',
    ],
    buttonText: [
      'View Certificate',
      'View Website',
    ],
  ),
  'CSS': Skill(
    title: [
      'HTML, CSS and JavaScript for Web Developer',
      'Programmer Clock',
    ],
    subheading: [
      'By Coursera',
      'Project',
    ],
    body: [
      'Offered by Johns Hopkins University. A introductory course for web development.',
      'Programmer Clock is a clock with weather forecast.',
    ],
    buttonText: [
      'View Certificate',
      'View Website',
    ],
  ),
  'Flutter': Skill(
    title: [
      'Gmail Clone',
      'Card Space',
      'Sync Player',
      'Calorie Meter',
      'Weather App',
    ],
    subheading: [
      'Fun Project',
      'Project',
      'Project',
      'Learning Project',
      'Learning Project',
    ],
    body: [
      'Gmail App UI Clone in Flutter.',
      'A simple app for managing our day-to-day life cards like bank cards, business cards, organization cards, etc.',
      'Sync Player is an app that syncs any video or music with other members in a room.',
      'Calorie Meter is an android app that helps the user to measure their daily BMI(Body Mass Index) and BMR (Basal Metabolic Rate) and let them achieve their goal.',
      'A simple weather app.',
    ],
    buttonText: [
      'View More',
      'View More',
      'View More',
      'View More',
      'View More',
    ],
  ),
  'Android': Skill(
    title: [
      'ChatterBox Translator',
    ],
    subheading: [
      'Project',
    ],
    body: [
      'Chatter Box is an android app that is capable of Voice, Text, Image Text Translation, and end-to-end chat translation.',
    ],
    buttonText: [
      'View More',
    ],
  ),
};
List<Color> myColor = [
  Colors.deepOrangeAccent,
  Colors.orangeAccent,
  Colors.pinkAccent,
  Colors.redAccent,
  Colors.blueAccent,
  Colors.indigoAccent,
  Colors.lightBlueAccent,
  Colors.purpleAccent,
];
// Color kWhite = Color(0xffd3d4d4);
Color kWhite = Colors.white;
Color kDarkWhite = Color(0xff787a7b);
Color kBackground = Color(0xff212324);
Color kCardBackground = Color(0xff18191A);
Color kDeepBlue = Color(0xff4F46E5);
Color kPink = Colors.pink;
Color kPinkAccent = Colors.pinkAccent;

List<FunFact> funFactList = [
  FunFact(
      heading: 'Engineer by Day, Gamer by Night',
      description: "Full on rush Gameplay. Do or Die..☠. That's my style.",
      img: 'game.jpg'),
  FunFact(
      heading: 'Do you like Anime?',
      description:
          'If Yes, We need to meet to talk about a lot of anime like Naruto, SAO, Black C...',
      img: 'Anime.jpeg'),
  FunFact(
      heading: 'A Big Foodie',
      description:
          "I can buy you anything, but please don't take from my plate",
      img: 'foodie.png'),
];
List<Project> projectsList = [
  Project(
    imgsrc: [
      'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/4.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/1.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/2.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/3.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/5.png',
    ],
    summary:
        'A secured cross-platform application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
    title: 'Card-Space',
    tech: [
      'Flutter',
      'Dart',
      'Android Studio',
    ],
    subtitle: 'A Card Managing App',
    viewMore: 'https://github.com/Yogeshk4124/Card-Space',
    apk:
        'https://github.com/Yogeshk4124/Card-Space/blob/main/apk/app.apk?raw=true',
    code:
        'https://github.com/Yogeshk4124/Card-Space/archive/refs/heads/main.zip',
  ),
  Project(
    subtitle: 'A multimedia app',
    tech: ['Flutter', 'Flask', 'Dart'],
    imgsrc: [
      'https://raw.githubusercontent.com/Yogeshk4124/SyncPlayer/main/ScreenShots/video.png',
      'https://raw.githubusercontent.com/Yogeshk4124/SyncPlayer/main/ScreenShots/ConfCreate.png',
      'https://raw.githubusercontent.com/Yogeshk4124/SyncPlayer/main/ScreenShots/music.png',
      'https://raw.githubusercontent.com/Yogeshk4124/SyncPlayer/main/ScreenShots/musicPlaylist.png',
      'https://raw.githubusercontent.com/Yogeshk4124/SyncPlayer/main/ScreenShots/videoFull.png',
      'https://raw.githubusercontent.com/Yogeshk4124/SyncPlayer/main/ScreenShots/videochat.png'
    ],
    summary:
        'Sync Player is a multimedia app which allow user to create and join private room where members can play their media at sync with each other. User can also chat with other while playing videos. This project contains some extra functionality as normal multimedia app does not provide.',
    title: 'Sync Player',
    viewMore: 'https://github.com/Yogeshk4124/SyncPlayer',
    apk:
        'https://github.com/Yogeshk4124/SyncPlayer/blob/main/APK/SyncPlayer.apk?raw=true',
    code:
        'https://github.com/Yogeshk4124/SyncPlayer/archive/refs/heads/main.zip',
  ),
  Project(
    subtitle: 'Gmail UI Clone App',
    imgsrc: [
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot4.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot2.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot9.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot1.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot3.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot5.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot6.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot10.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot7.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Gmail-UI-Clone/main/screenshots/Screenshot8.png',
    ],
    summary:
        '''This project is a UI Clone of the Gmail Application made entirely with Flutter. It is my first take to make a UI clone. This project is tested on Asus Zenfone Max Pro M2 ( Android version ) and Real me 5s (Android version 10 / 4GB Ram)''',
    title: 'Gmail App',
    tech: [
      'Flutter',
      'Dart',
      'Android Studio',
    ],
    viewMore: 'https://github.com/Yogeshk4124/Gmail-UI-Clone',
    apk:
        'https://github.com/Yogeshk4124/Gmail-ui-clone/blob/main/apk/app.apk?raw=true',
    code:
        'https://github.com/Yogeshk4124/Gmail-UI-Clone/archive/refs/heads/main.zip',
  ),
  Project(
    subtitle: 'A Clock Website',
    tech: ['HTML', 'CSS', 'JavaScript'],
    imgsrc: [
      'https://raw.githubusercontent.com/Yogeshk4124/Programmer-Clock/main/clock.png'
    ],
    summary:
        'Programmer Clock is a clock with weather forecast. The most unused clock. A Clock That No One Asked For. It shows time in the most loved number system by programmers that is binary.',
    title: 'Programmer Clock',
    viewMore: 'https://github.com/Yogeshk4124/SyncPlayer',
    apk:
        'https://github.com/Yogeshk4124/SyncPlayer/blob/main/APK/SyncPlayer.apk?raw=true',
    code:
        'https://github.com/Yogeshk4124/SyncPlayer/archive/refs/heads/main.zip',
  ),
  Project(
    subtitle: 'An Event Post App',
    tech: ['Android', 'Java', 'Firebase'],
    imgsrc: [
      'https://raw.githubusercontent.com/Yogeshk4124/Simple-Posts-App/master/Screenshots/publishpost.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Simple-Posts-App/master/Screenshots/LandingScreen.jpg',
      'https://raw.githubusercontent.com/Yogeshk4124/Simple-Posts-App/master/Screenshots/AdminSignin.png',
    ],
    summary:
        'It is a simple event posting application. It has two types of accounts that is User and Admin.\nAdmin will have the access to create post where he/she can add details of events like Name, category, date, and location.\nUser can see all the posts that admin adds.',
    title: 'Simple Post App',
    viewMore: 'https://github.com/Yogeshk4124/Programmer-Clock',
    apk: 'https://yogeshk4124.github.io/Programmer-Clock/',
    code:
        'https://github.com/Yogeshk4124/Programmer-Clock/archive/refs/heads/main.zip',
  ),
  Project(
    subtitle: 'All in One Translator ',
    tech: ['Android', 'Java', 'Firebase'],
    imgsrc: [
      'https://raw.githubusercontent.com/Yogeshk4124/Chatter-Box-Translator/master/Screenshots/1VerifyCrop.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Chatter-Box-Translator/master/Screenshots/2ProfileInfoCrop.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Chatter-Box-Translator/master/Screenshots/3VoiceTranslationCrop.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Chatter-Box-Translator/master/Screenshots/4textTranslationCrop.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Chatter-Box-Translator/master/Screenshots/5Image%20TranslationCrop.png',
      'https://raw.githubusercontent.com/Yogeshk4124/Chatter-Box-Translator/master/Screenshots/6ChatCrop.png'
    ],
    summary:
        'Chatter Box is an android app that is capable of Voice, Text, Image Text Translation along with a Chatting feature with the in-Built translator that converts the message to another person default language which is set up during the sign-in process. It supports 9 languages.',
    title: 'ChatterBox Translator',
    viewMore: 'https://github.com/Yogeshk4124/Chatter-Box-Translator',
    code:
        'https://github.com/Yogeshk4124/Chatter-Box-Translator/archive/refs/heads/master.zip',
  ),
  Project(
    subtitle: 'A simple Weather forecast App',
    tech: ['Flutter', 'Dart'],
    imgsrc: [
      'https://raw.githubusercontent.com/Yogeshk4124/weather-app/main/Screenshots/first.png',
      'https://raw.githubusercontent.com/Yogeshk4124/weather-app/main/Screenshots/second.png'
    ],
    summary:
        'A simple weather application that gives the details of the weather of the current location and user can also search weather by location.',
    title: 'Weather App',
    viewMore: 'https://github.com/Yogeshk4124/weather-app',
    apk:
        'https://github.com/Yogeshk4124/weather-app/raw/main/apk/app-release.apk',
    code: 'https://github.com/Yogeshk4124/weather-app',
  ),
  Project(
    subtitle: 'A calorie tracking app.',
    tech: ['Flutter', 'Dart'],
    imgsrc: [
      'https://raw.githubusercontent.com/Yogeshk4124/CalorieMeter/main/Screenshots/splash.png',
      'https://raw.githubusercontent.com/Yogeshk4124/CalorieMeter/main/Screenshots/Main.png',
      'https://raw.githubusercontent.com/Yogeshk4124/CalorieMeter/main/Screenshots/second.png',
      'https://raw.githubusercontent.com/Yogeshk4124/CalorieMeter/main/Screenshots/third.png',
    ],
    summary:
        'Calorie Meter is an android app that helps user to measure their daily BMI(Body Mass Index) and BMR (Basal Metabolic Rate) and let them achieve their goal.',
    title: 'Calorie Meter',
    viewMore: 'https://github.com/Yogeshk4124/CalorieMeter',
    apk:
        'https://github.com/Yogeshk4124/CalorieMeter/blob/main/apk/caloriemeter.apk',
    code:
        'https://github.com/Yogeshk4124/CalorieMeter/archive/refs/heads/main.zip',
  ),
];
List<Education> education = [
  Education(
      level: "Bachelors of Engineering",
      board: 'CSE',
      institute: "Chandigarh University",
      location: 'Mohali',
      duration: "2018-2022"),
  Education(
      level: "Intermediate",
      board: 'CBSE',
      institute: "Army Public School",
      location: 'Yol Cantt',
      duration: "2017-2018"),
  Education(
      location: 'Pathankot',
      board: 'CBSE',
      level: "Matriculation",
      institute: "Army Public School",
      duration: "2015-2016"),
];
List<Experience> experience = [
  Experience(
    position: "Internship | Software Engineer",
    companyName: "Odessa Technologies",
    duration: "April 2021 - Present",
    location: 'Bangalore',
    content: [
      'Responsible for Accessibility Testing.',
      'Performed an analysis on SQL Queries',
    ],
  ),
  Experience(
    position: "Internship | Android Developer",
    companyName: "Digital Optimized and Tenacious Solutions Pvt. Ltd",
    location: 'Chandigarh',
    duration: "June 2020 - August 2020",
    content: [
      "Designed the 'DOTS ' app from scratch.",
      "Performed an analysis on a Health app, 'HealthCrum'.",
      'Designed an eBook app ‘The Melange of Success.'
    ],
  ),
];
