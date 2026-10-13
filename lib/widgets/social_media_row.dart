import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnack(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$platform diklik'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => _showSnack(context, 'Instagram'),
          icon: const FaIcon(FontAwesomeIcons.instagram),
          color: Colors.pink,
          iconSize: 32,
          tooltip: 'Instagram',
        ),
        IconButton(
          onPressed: () => _showSnack(context, 'LinkedIn'),
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blue.shade800,
          iconSize: 32,
          tooltip: 'LinkedIn',
        ),
        IconButton(
          onPressed: () => _showSnack(context, 'GitHub'),
          icon: const FaIcon(FontAwesomeIcons.github),
          color: Colors.black87,
          iconSize: 32,
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}