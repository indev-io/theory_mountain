import 'package:theory_mountain/about/about.dart';
import 'package:theory_mountain/profile/profile.dart';
import 'package:theory_mountain/login/login.dart';
import 'package:theory_mountain/topics/topics.dart';
import 'package:theory_mountain/home/home.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};
