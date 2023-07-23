import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/context_extension.dart';

import '../../components/components.dart';
import '../../routes/app_router.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
            context.route.push(const PostRoute());
          },
          width: 200,
          isFullWidth: false,
        ),
      ),
    );
  }
}
