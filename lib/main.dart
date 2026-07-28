import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'theme.dart';
import 'dashboard_widgets.dart';
import 'sign_in_bottom_sheet.dart';

void main() {
  runApp(const FlowWorkApp());
}

class FlowWorkApp extends StatelessWidget {
  const FlowWorkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flow Work App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Roboto',
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Project ✨',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              const ProgressCard(),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Expanded(
                    child: StatMiniCard(
                      icon: Icons.access_time_rounded,
                      value: '23h 40m',
                      label: 'Focus Time',
                      iconColor: Colors.purpleAccent,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: StatMiniCard(
                      icon: Icons.flash_on_rounded,
                      value: '12/14',
                      label: 'Tasks Done',
                      iconColor: Colors.tealAccent,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: StatMiniCard(
                      icon: Icons.nightlight_round,
                      value: 'Tonight',
                      label: 'Sleep Mode',
                      iconColor: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Fixed: changed from .between to .spaceBetween
                children: [
                  const Text(
                    "Today's Schedule",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => showSignInBottomSheet(context),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1C1A3A),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            size: 16,
                            color: AppColors.accentPurple,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Add',
                            style: TextStyle(
                              color: AppColors.accentPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const ScheduleItem(
                icon: '🏃',
                title: 'Morning Workout',
                time: '06:00 AM · 45 min',
                dotColor: Colors.orange,
              ),
              const ScheduleItem(
                icon: '💻',
                title: 'Deep Work Session',
                time: '09:00 AM · 2h',
                dotColor: Colors.blueAccent,
              ),
              const ScheduleItem(
                icon: '👥',
                title: 'Team Standup',
                time: '11:00 AM · 30 min',
                dotColor: Colors.tealAccent,
              ),
              const ScheduleItem(
                icon: '🍱',
                title: 'Lunch Break',
                time: '01:00 PM · 1h',
                dotColor: Colors.amber,
              ),
              const ScheduleItem(
                icon: '📚',
                title: 'Study: ML Fundamentals',
                time: '03:00 PM · 90 min',
                dotColor: Colors.purpleAccent,
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildCustomBottomNavigationBar(),
    );
  }

  Widget _buildCustomBottomNavigationBar() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: AppColors.border, width: 1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(Icons.home_filled, 'Home', 0),
          _navItem(Icons.access_time, 'Schedule', 1),
          _navItem(Icons.calendar_month_outlined, 'Calendar', 2),
          _navItem(Icons.bar_chart_rounded, 'Stats', 3),
          _navItem(Icons.language_rounded, 'Clocks', 4),
          _navItem(Icons.settings_outlined, 'Settings', 5),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    final isSelected = _currentIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _currentIndex = index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? AppColors.accentPurple : AppColors.textMuted,
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColors.accentPurple : AppColors.textMuted,
              fontSize: 11,
            ),
          ),
        ],
      ),
=======
import 'package:provider/provider.dart';

import 'screens/splash/splash_screen.dart';
import 'screens/theme/app_theme.dart';
import 'screens/theme/theme_provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const FocusGlowApp();
  }
}

class FocusGlowApp extends StatelessWidget {
  const FocusGlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Focus Glow',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      home: const SplashScreen(),
>>>>>>> 9faad0bc1ff437255443789d69aebc11f04ee28e
    );
  }
}
