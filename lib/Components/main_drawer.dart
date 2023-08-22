import 'package:flutter/material.dart';
import '../Utils/app-routes.dart';

class MainDrawer extends StatelessWidget {
  Widget? _createIten(IconData icon, String label, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            alignment: Alignment.bottomRight,
            child: const Text(
              "Vamos Cozinhar",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Color.fromARGB(255, 228, 59, 115),
              ),
            ),
          ),
          SizedBox(height: 20),
          _createIten(
            Icons.restaurant,
            "Refeições",
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
          )!,
          _createIten(
            Icons.settings,
            "Configurações",
            () =>
                Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS),
          )!,
        ],
      ),
    );
  }
}
