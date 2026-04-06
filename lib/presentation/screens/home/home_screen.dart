import 'package:flutter/material.dart';
import 'package:ostad_14_assignment_project_youtube_lite/core/constants/app_colors.dart';
import 'package:ostad_14_assignment_project_youtube_lite/core/constants/app_strings.dart';
import 'package:ostad_14_assignment_project_youtube_lite/presentation/screens/home/widget/youtube_nav_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundDark,
        title: Row(
          spacing: 8,
          children: [
            Container(
              width: 35,
              height: 25,
              decoration: BoxDecoration(
                color: AppColors.youtubePrimary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(Icons.play_arrow, color: Colors.white),
            ),
            Text(AppStrings.appName, style: TextStyle(color: Colors.white)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildSectionHeader(AppStrings.sectionBrowse),
          YoutubeNavTile(
            icon: Icons.home,
            label: AppStrings.navHome,
            onTap: () {},
          ),
          YoutubeNavTile(
            icon: Icons.shortcut_sharp,
            label: AppStrings.navShorts,
            onTap: () {},
          ),
          YoutubeNavTile(
            icon: Icons.subscriptions,
            label: AppStrings.navSubscriptions,
            onTap: () {},
          ),
          YoutubeNavTile(
            icon: Icons.explore,
            label: AppStrings.navExplore,
            onTap: () {},
          ),
          YoutubeNavTile(
            icon: Icons.trending_up,
            label: AppStrings.navTrending,
            onTap: () {},
          ),
          _buildSectionHeader(AppStrings.sectionLibrary),
          YoutubeNavTile(
            icon: Icons.history,
            label: AppStrings.navHistory,
            onTap: () {},
          ),
          YoutubeNavTile(
            icon: Icons.watch_later,
            label: AppStrings.navWatchLater,
            onTap: () {},
          ),
          YoutubeNavTile(
            icon: Icons.linked_camera,
            label: AppStrings.navLikedVideos,
            onTap: () {},
          ),
          _buildSectionHeader(AppStrings.sectionMore),
          YoutubeNavTile(
            icon: Icons.settings,
            label: AppStrings.navSettings,
            onTap: () {},
          ),
          YoutubeNavTile(
            icon: Icons.help_outline_sharp,
            label: AppStrings.navHelp,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.textHint,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
