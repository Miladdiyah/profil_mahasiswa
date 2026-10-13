import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  const ProfileHeader(
                    name: 'Marthin Miladdiyah Khoirun Nisa',
                    nim: '26.21.1625',
                  ),
                  const SizedBox(height: 24),
                  const ProfileInfo(
                    programStudi: 'S1 Informatika',
                    email: 'm.miladdiyah@students.amikom.ac.id',
                    lokasi: 'Yogyakarta, Indonesia',
                  ),
                  const SizedBox(height: 16),
                  const SocialMediaRow(),
                ],
              ),
            ),
          ),
          const SafeArea(
            top: false,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: ActionButtons(),
            ),
          ),
        ],
      ),
    );
  }
}