import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticleScreen extends StatelessWidget {
  final Article article;

  const ArticleScreen({
    Key? key,
    required this.article,
  }) : super(key: key);

  Widget _buildContent(String content) {
    final lines = content.split('\n');
    final widgets = <Widget>[];

    for (var line in lines) {
      if (line.trim().isEmpty) {
        widgets.add(const SizedBox(height: 8));
      } else if (line.startsWith('## ')) {
        widgets.add(Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Text(
            line.replaceFirst('## ', ''),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ));
      } else if (line.startsWith('**') && line.endsWith(':**')) {
        widgets.add(Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 4),
          child: Text(
            line.replaceAll('**', '').replaceAll(':', ''),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ));
      } else if (line.startsWith('**') && line.endsWith('**')) {
        widgets.add(Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            line.replaceAll('**', ''),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ));
      } else if (RegExp(r'^\d+\.').hasMatch(line)) {
        widgets.add(Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 8),
          child: Text(
            line,
            style: const TextStyle(height: 1.5, color: Colors.black87),
          ),
        ));
      } else if (line.startsWith('- ')) {
        widgets.add(Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('• ', style: TextStyle(fontSize: 16)),
              Expanded(
                child: Text(
                  line.replaceFirst('- ', ''),
                  style: const TextStyle(height: 1.5, color: Colors.black87),
                ),
              ),
            ],
          ),
        ));
      } else {
        widgets.add(Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            line,
            style: const TextStyle(height: 1.5, color: Colors.black87),
          ),
        ));
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildContent(article.content),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                border: Border(
                  left: BorderSide(color: Colors.yellow[700]!, width: 4),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.warning_amber, color: Colors.yellow[900]),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Important: If symptoms worsen or you\'re unsure about treatment, seek professional medical care immediately.',
                      style: TextStyle(
                        color: Colors.yellow[900],
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}