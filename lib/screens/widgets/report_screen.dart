import 'package:challange_store/screens/widgets/dialog.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(8),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(123, 26, 180, 152)),
                    child: const ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'John',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$14.99',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '0923222432',
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            'No.32, Blah lah lah Road, Yangon',
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return UserDetailsDialog();
                  },
                );
              },
              child: const Text("Delivery Info"),
            ),
          ),
        ],
      ),
    );
  }
}
