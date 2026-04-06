import 'package:flutter/material.dart';

class YoutubeNavTile extends StatelessWidget {
  const YoutubeNavTile({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 16,),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Icon(Icons.chevron_right_rounded, color: Colors.white,)
        ],
      ),
    );
  }
}
