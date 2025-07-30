import 'package:flutter/material.dart';

class FarmInfoCard extends StatelessWidget {
  final String farmName;
  final String location;
  final String cropType;
  final int numberOfWorkers;

  const FarmInfoCard({
    super.key,
    required this.farmName,
    required this.location,
    required this.cropType,
    required this.numberOfWorkers,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.zero,
      elevation: 4,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Top row with green rounded square and farm_padi logo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // Green rounded square with manage accounts icon
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Color(0xFF2E7D32),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: const Icon(
                    Icons.manage_accounts,
                    color: Colors.white,
                    size: 26,
                  ),
                ),

                
                // Farm_padi logo
                 Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/farm_padi_rake.png', 
                      width: 22,
                      height: 22,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),


            const SizedBox(height: 20),

            // Farm name and location in the same row
            Row(
              children: [
                // Tractor icon
                Icon(
                  Icons.agriculture,
                  color: Color(0xFF2E7D32),
                  size: 20,
                ),
                const SizedBox(width: 8),

                // Farm name
                Text(
                  farmName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color:  Color(0xFF2E7D32),
                  ),
                ),
                const Spacer(),
                
                // Location icon
                Icon(
                  Icons.my_location,
                  color: Color(0xFF2E7D32),
                  size: 16,
                ),
                
                const SizedBox(width: 6),

                // Location text
                Flexible(
                  child: Text(
                    location,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Horizontal divider line
            Divider(
              color: Colors.grey.shade400,
              thickness: 1,
            ),

            const SizedBox(height: 10),


            // Workers count row
            Row(
              children: [
                Icon(
                  Icons.group,
                  color: Colors.green.shade600,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  '$numberOfWorkers farmer${numberOfWorkers == 1 ? '' : 's'}',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Bottom section with crop type and viewing message
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // Crop type badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.green.shade200,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    cropType,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 8),

                // "You are viewing this farm" message
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color:  Colors.green.shade50,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'You are viewing this farm',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF2E7D32),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}