import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final List<String> identifiers = [
    '332323',
    '445566',
    '789012',
    '234567',
    '332323',
    '445566',
    '789012',
    '234567',
    // Add more if necessary
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('គណនី'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Container
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple[700],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150',
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ទូ ចាង',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'បញ្ជូនទឹកប្រាក់ \$0.00',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.edit, color: Colors.white),
                ],
              ),
            ),

            // QR Code Identification Container
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.qr_code, color: Colors.purple),
                  SizedBox(width: 10),
                  Text('លេខសម្គាល់៖ 332323', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            SizedBox(height: 16),

            // ListView.builder for identifiers
            Container(
              padding: EdgeInsets.only(bottom: 16),  // Add padding for bottom margin
              child: SizedBox(
                height: double.maxFinite,  // Fixed height for the ListView.builder
                child: ListView.builder(
                  itemCount: identifiers.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 5, // Adds shadow to the card
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.qr_code, color: Colors.purple),
                            SizedBox(width: 10),
                            Text(
                              'លេខសម្គាល់៖ ${identifiers[index]}',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
