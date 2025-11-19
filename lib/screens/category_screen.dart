import 'package:flutter/material.dart';
import '../models/medical_category.dart';
import '../models/article.dart';
import 'article_screen.dart';

class CategoryScreen extends StatelessWidget {
  final MedicalCategory category;

  const CategoryScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  void _navigateToArticle(BuildContext context, Article article) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArticleScreen(article: article),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        backgroundColor: category.color,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [category.color, category.color.withOpacity(0.8)],
              ),
            ),
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  category.icon,
                  style: const TextStyle(fontSize: 64),
                ),
                const SizedBox(height: 12),
                Text(
                  category.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${category.articles.length} articles available offline',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: category.articles.length,
              itemBuilder: (context, index) {
                final article = category.articles[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.grey[300]!),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Text(
                      article.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        'Tap to read →',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    onTap: () => _navigateToArticle(context, article),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}