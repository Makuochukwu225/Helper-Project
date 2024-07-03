import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class HtmlCheckAndRenderHomeScreen extends StatelessWidget {
  const HtmlCheckAndRenderHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const String htmlData = """
    <div>
      <h3>Hello, World!</h3>
      <p>This is a <strong>HTML</strong> content rendered in Flutter.</p>
    </div>
    """;

    const String plainTextData = "This is plain text content.";

    bool containsHtmlTags(String input) {
      final htmlTagPattern = RegExp(r'<[^>]+>');
      return htmlTagPattern.hasMatch(input);
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: containsHtmlTags(htmlData)
              ? const HtmlWidget(htmlData)
              : const Text(htmlData),
        ),
      ),
    );
  }
}
