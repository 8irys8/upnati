import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebViewScreen extends StatefulWidget {
  final String url;
  const PaymentWebViewScreen({Key? key, required this.url}) : super(key: key);

  @override
  State<PaymentWebViewScreen> createState() => _PaymentWebViewScreenState();
}

class _PaymentWebViewScreenState extends State<PaymentWebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      navigationDelegate: (navigation) {
        print(navigation.url);
        if (navigation.url.contains('/success')) {
          context.router.pop(true);

          return NavigationDecision.prevent;
        } else {
          if (navigation.url.contains(widget.url)) {
            return NavigationDecision.navigate;
          }
          context.router.pop();

          return NavigationDecision.prevent;
        }
      },
      initialUrl: widget.url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
