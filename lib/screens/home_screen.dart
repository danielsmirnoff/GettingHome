import 'package:flutter/material.dart';
import '../data/medical_data.dart';
import '../models/medical_category.dart';
import '../widgets/emergency_card.dart';
import '../widgets/category_card.dart';
import '../widgets/info_banner.dart';
import 'category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _showEmergencyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Call 911?'),
          content: const Text(
            'This will initiate an emergency call to 911. Only use for life-threatening emergencies.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                // In production, use url_launcher package: launch('tel:911');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('In production, this would dial 911'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('Call Now'),
            ),
          ],
        );
      },
    );
  }

  void _navigateToCategory(BuildContext context, MedicalCategory category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryScreen(category: category),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = MedicalData.getCategories();

    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Getting HOME',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Your Offline Medical Guide',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmergencyCard(
              onCall911: () => _showEmergencyDialog(context),
            ),
            const SizedBox(height: 16),
            const InfoBanner(
              message:
                  'Note: This app provides general medical information and is not a substitute for professional medical advice. Always consult healthcare providers for medical concerns.',
            ),
            const SizedBox(height: 24),
            const Text(
              'Medical Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryCard(
                  category: category,
                  onTap: () => _navigateToCategory(context, category),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}