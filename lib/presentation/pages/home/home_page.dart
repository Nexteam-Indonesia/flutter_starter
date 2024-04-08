import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../components/components.dart';
import '../post/post_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const path = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: const BaseAppBar(
        title: 'Posts',
      ),
      body: Center(
        child: PrimaryButton(
          title: "Go to Post Page",
          onTap: () {
            context.go(PostPage.path);
          },
          width: 200,
          isFullWidth: false,
        ),
      ),
    );
  }
}
