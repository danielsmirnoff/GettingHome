import 'package:flutter/material.dart';
import 'article.dart';

class MedicalCategory {
  final int id;
  final String title;
  final Color color;
  final String icon;
  final List<Article> articles;

  MedicalCategory({
    required this.id,
    required this.title,
    required this.color,
    required this.icon,
    required this.articles,
  });
}