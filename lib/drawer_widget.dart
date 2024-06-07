import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(173, 136, 198, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.only(top: 50),
                child: DrawerHeader(
                  child: Text(
                    "HealthKa",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle the navigation
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle the navigation
                },
              ),
              ListTile(
                leading: const Icon(Icons.medical_services),
                title: const Text(
                  "Services",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle the navigation
                },
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              "Logout",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Handle the logout
            },
          ),
        ],
      ),
    );
  }
}



