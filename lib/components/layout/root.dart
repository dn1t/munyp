import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';

class Root extends HookConsumerWidget {
  final Widget? child;

  const Root({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final padding = MediaQuery.viewPaddingOf(context);

    useEffect(() {
      Future(() {
        ref.read(paddingProvider.notifier).state = padding;
      });
      return;
    }, [padding]);

    return Container(child: child);
  }
}
