import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_flutter/webview_flutter.dart';

class _WebViewControllerHookCreator {
  const _WebViewControllerHookCreator();

  WebViewController call() {
    return use(const _WebViewControllerHook());
  }
}

const useWebViewController = _WebViewControllerHookCreator();

class _WebViewControllerHook extends Hook<WebViewController> {
  const _WebViewControllerHook();

  @override
  _WebViewControllerHookState createState() {
    return _WebViewControllerHookState();
  }
}

class _WebViewControllerHookState
    extends HookState<WebViewController, _WebViewControllerHook> {
  late final controller = WebViewController();

  @override
  WebViewController build(BuildContext context) => controller;

  @override
  String get debugLabel => 'useWebViewController';
}
