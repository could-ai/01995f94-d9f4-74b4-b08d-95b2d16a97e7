import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to our Shoe Store'),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Products',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                  ),
            ),
            const SizedBox(height: 16),
            const ProductCategoryCard(
              title: 'Casual Shoes',
              description: 'Stylish and comfortable for daily wear.',
              icon: Icons.shopping_bag_outlined,
            ),
            const SizedBox(height: 12),
            const ProductCategoryCard(
              title: 'Formal Shoes',
              description: 'Classy look for office, functions, and meetings.',
              icon: Icons.work_outline,
            ),
            const SizedBox(height: 12),
            const ProductCategoryCard(
              title: 'Sports Shoes',
              description:
                  'Durable and performance-based for running, gym, and outdoor activities.',
              icon: Icons.directions_run,
            ),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 16),
            Text(
              '⚡ Our Specialty',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                  ),
            ),
            const SizedBox(height: 16),
            const SpecialtyItem(
              title: 'High Quality & Affordable Pricing',
              icon: Icons.high_quality,
            ),
            const SpecialtyItem(
              title: 'Trendy Designs for Every Generation',
              icon: Icons.auto_awesome,
            ),
            const SpecialtyItem(
              title: 'All India Delivery (4–5 days)',
              icon: Icons.local_shipping,
            ),
            const SpecialtyItem(
              title: 'Customer Satisfaction & Trust Focused',
              icon: Icons.verified_user,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCategoryCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const ProductCategoryCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.blue.shade600),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
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

class SpecialtyItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const SpecialtyItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue.shade800),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
