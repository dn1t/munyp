import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../components/layout/wiki_layout.dart';
import '../webview_controller.dart';

class HomePage extends HookWidget {
  final GoRouterState state;

  const HomePage({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useWebViewController();

    useEffect(() {
      controller
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(NavigationDelegate(
          onNavigationRequest: (request) {
            return NavigationDecision.navigate;
          },
          onPageStarted: (url) {
            controller.runJavaScript('alert("zz")');
          },
        ))
        ..loadRequest(Uri.parse('https://namu.wiki'));
      return;
    }, [controller]);

    return WikiLayout(
      title: 'e',
      child: Container(
        height: 640,
        width: 100,
        color: Colors.red,
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
