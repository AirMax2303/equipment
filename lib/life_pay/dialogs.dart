import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

Dialog lifePayDialog(BuildContext context) {
  final PlatformWebViewControllerCreationParams params;
  params = const PlatformWebViewControllerCreationParams();
  final WebViewController controller = WebViewController.fromPlatformCreationParams(params);

  controller
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..loadRequest(Uri.parse('https://url.life-pay.ru/U8W7rQc1'));
  return Dialog.fullscreen(
    backgroundColor: Colors.white,
    child: Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        WebViewWidget(controller: controller),
        const SizedBox(height: 20,),
        FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Закрыть'))
      ],
    ),
  );
}
