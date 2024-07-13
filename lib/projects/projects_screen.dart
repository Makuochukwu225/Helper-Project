import 'package:flutter/material.dart';
import 'package:helper_project/projects/custom_tab_bar/src/screens/home/custom_tab_bar_home_screen.dart';
import 'package:helper_project/projects/html_check_n_render/src/screens/home/home_screen.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProjectsScreen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const HtmlCheckAndRenderHomeScreen(),
                    ));
              },
              title: const Text("Html check and parse"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const CusomTabBarHomeScreen(),
                    ));
              },
              title: const Text("Custom Tab Bar"),
            ),
          ],
        ),
      ),
    );
  }
}
