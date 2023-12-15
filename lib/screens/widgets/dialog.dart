import 'package:challange_store/firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _firebase = FirebaseAuth.instance;

class UserDetailsDialog extends StatefulWidget {
  const UserDetailsDialog({super.key});

  @override
  _UserDetailsDialogState createState() => _UserDetailsDialogState();
}

class _UserDetailsDialogState extends State<UserDetailsDialog> {
  final FirestoreService firestoreService = FirestoreService();
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Delivery Info'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              controller: _addressController,
              decoration: const InputDecoration(labelText: 'Address'),
              maxLines: 2,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            firestoreService.addData(_nameController.text);
            _nameController.clear();
            Navigator.pop(context);
          },
          child: const Text('Order'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}
// import 'package:challange_store/firestore.dart';
// import 'package:flutter/material.dart';

// class UserDetailDialog extends StatefulWidget {
//   const UserDetailDialog({super.key});

//   @override
//   State<UserDetailDialog> createState() => _UserDetailDialogState();
// }

// class _UserDetailDialogState extends State<UserDetailDialog> {
//   final FirestoreService firestoreService = FirestoreService();
//   final TextEditingController textController = TextEditingController();

//   void openDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         content: TextField(
//           controller: textController,
//         ),
//         actions: [
//           ElevatedButton(
//             onPressed: () {
//               firestoreService.addData(textController.text);
//               textController.clear();
//               Navigator.pop(context);
//             },
//             child: Text('Dialog'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: openDialog,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
