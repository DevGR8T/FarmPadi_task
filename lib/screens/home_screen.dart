import 'package:flutter/material.dart';
import '../widgets/farm_info_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            // Header with back arrow and title
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [

                  // Back arrow button
                  GestureDetector(
                    onTap: () {
                      // Handles back navigation
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black87,
                        size: 24,
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 40),
                  
                  // Title
                  const Text(
                    'Team Members',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            
            // Farm cards 
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    
                    // First farm card 
                    const FarmInfoCard(
                      farmName: 'Eden 1',
                      location: 'Jos, Jos South, Plateau',
                      cropType: 'Maize',
                      numberOfWorkers: 0,
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Second farm card
                    const FarmInfoCard(
                      farmName: 'GreenLand Farms',
                      location: 'Kaduna, Kaduna State',
                      cropType: 'Rice',
                      numberOfWorkers: 5,
                    ),
                    
                    const SizedBox(height: 16),
                    
                    // Third farm card
                    const FarmInfoCard(
                      farmName: 'Sunrise Agriculture',
                      location: 'Kano, Kano State',
                      cropType: 'Wheat',
                      numberOfWorkers: 12,
                    ),
                    
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
