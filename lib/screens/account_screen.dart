import 'package:farm_management_app/widgets/header.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              AppHeader(
                subtitle: "Account",
                icon: Icons.person,
                title: "My Account",
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _buildSettingItem(
                          icon: Icons.person_outline,
                          title: "Personal Information",
                          onTap: () {},
                        ),
                        const Divider(),
                        _buildSettingItem(
                          icon: Icons.notifications_outlined,
                          title: "Notifications",
                          onTap: () {},
                        ),
                        const Divider(),
                        _buildSettingItem(
                          icon: Icons.security,
                          title: "Security",
                          onTap: () {},
                        ),
                        const Divider(),
                        _buildSettingItem(
                          icon: Icons.help_outline,
                          title: "Help & Support",
                          onTap: () {},
                        ),
                        const Divider(),
                        _buildSettingItem(
                          icon: Icons.logout,
                          title: "Logout",
                          onTap: () {},
                          textColor: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? textColor,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: textColor ?? Colors.black87),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: textColor ?? Colors.black87,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
      onTap: onTap,
    );
  }
}
