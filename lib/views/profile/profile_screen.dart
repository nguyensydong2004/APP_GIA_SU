import 'package:app_education/views/profile/widgets/profile_app_bar.dart';
import 'package:app_education/views/profile/widgets/profile_options.dart';
import 'package:app_education/views/profile/widgets/profile_stats_card.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          ProfileAppBar(
            initials: 'User1',
            fullName: 'User1',
            email: 'user1@gmail.com',
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ProfileStatsCard(),
                  SizedBox(
                    height: 24,
                  ),
                  ProfileOptions(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
