import 'package:app_education/routes/app_routes.dart';
import 'package:app_education/views/profile/widgets/profile_option_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/app_dialogs.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOptionCard(
          title: 'Edit Profile',
          subtitle: 'Update your personal information',
          icon: Icons.edit_outlined,
          onTap: (){},
        ),
        ProfileOptionCard(
          title: 'Notification',
          subtitle: 'Manager your notification',
          icon: Icons.notifications_outlined,
          onTap: (){},
        ),
        ProfileOptionCard(
          title: 'Setting',
          subtitle: 'App preferences and more',
          icon: Icons.settings_outlined,
          onTap: (){},
        ),
        ProfileOptionCard(
          title: 'Help & Support',
          subtitle: 'Get help or contact support',
          icon: Icons.help_outline,
          onTap: (){},
        ),
        ProfileOptionCard(
          title: 'Logout',
          subtitle: 'Sign out of your account',
          icon: Icons.logout,
          onTap: () async{
            final confirm = await AppDialogs.showLogoutDialog();
            if(confirm == true){
              Get.offAllNamed(AppRoutes.login);
            }
          },
          isDestructive: true,
        ),
      ],
    );
  }
}
