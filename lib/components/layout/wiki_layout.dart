import 'package:flutter/material.dart';

import 'app_bar.dart';

class WikiLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const WikiLayout({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MunypAppBar(
            title: title,
            onCollapsedTap: () {},
          ),
          SliverToBoxAdapter(child: child),
        ],
      ),
    );
  }
}
