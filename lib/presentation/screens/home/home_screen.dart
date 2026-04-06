import 'package:flutter/material.dart';
import 'package:ostad_14_assignment_project_youtube_lite/core/constants/app_colors.dart';
import 'package:ostad_14_assignment_project_youtube_lite/core/constants/app_strings.dart';
import 'package:ostad_14_assignment_project_youtube_lite/core/constants/youtube_urls.dart';
import 'package:ostad_14_assignment_project_youtube_lite/presentation/screens/home/widget/youtube_nav_tile.dart';
import 'package:ostad_14_assignment_project_youtube_lite/presentation/screens/youtube/youtube_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _openUrl(String title, String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YoutubeScreen(title: title, url: url),
      ),
    );
  }

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
            onTap: () => _openUrl(AppStrings.navHome, YoutubeUrls.home),
          ),
          YoutubeNavTile(
            icon: Icons.subdirectory_arrow_left,
            label: AppStrings.navShorts,
            onTap: () => _openUrl(AppStrings.navShorts, YoutubeUrls.shorts),
          ),
          YoutubeNavTile(
            icon: Icons.subscriptions,
            label: AppStrings.navSubscriptions,
            onTap: () => _openUrl(AppStrings.navSubscriptions, YoutubeUrls.subscriptions),
          ),
          YoutubeNavTile(
            icon: Icons.explore,
            label: AppStrings.navExplore,
            onTap: () => _openUrl(AppStrings.navExplore, YoutubeUrls.explore),
          ),
          YoutubeNavTile(
            icon: Icons.trending_up,
            label: AppStrings.navTrending,
            onTap: () => _openUrl(AppStrings.navTrending, YoutubeUrls.trending),
          ),
          Divider(color: AppColors.divider),
          _buildSectionHeader(AppStrings.sectionLibrary),
          YoutubeNavTile(
            icon: Icons.history,
            label: AppStrings.navHistory,
            onTap: () => _openUrl(AppStrings.navHistory, YoutubeUrls.history),
          ),
          YoutubeNavTile(
            icon: Icons.watch_later,
            label: AppStrings.navWatchLater,
            onTap: () => _openUrl(AppStrings.navWatchLater, YoutubeUrls.watchLater),
          ),
          YoutubeNavTile(
            icon: Icons.linked_camera,
            label: AppStrings.navLikedVideos,
            onTap: () => _openUrl(AppStrings.sectionLibrary, YoutubeUrls.likedVideos),
          ),
          Divider(color: AppColors.divider),
          _buildSectionHeader(AppStrings.sectionMore),
          YoutubeNavTile(
            icon: Icons.settings,
            label: AppStrings.navSettings,
            onTap: () => _openUrl(AppStrings.navSettings, YoutubeUrls.settings),
          ),
          YoutubeNavTile(
            icon: Icons.help_outline_sharp,
            label: AppStrings.navHelp,
            onTap: () => _openUrl(AppStrings.navHelp, YoutubeUrls.help),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
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
