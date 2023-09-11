//
// import 'package:flutter/material.dart';
//
// import '../models/cv_dart.dart';
// import 'edit_cv_screen.dart';
//
// class CVView extends StatefulWidget {
//   CVData cvData;
//
//   CVView({required this.cvData});
//
//   @override
//   _CVViewState createState() => _CVViewState();
// }
//
// class _CVViewState extends State<CVView> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My CV'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               widget.cvData.fullName,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             Text('Slack Username: ${widget.cvData.slackUsername}'),
//             Text('GitHub Handle: ${widget.cvData.githubHandle}'),
//             Text('Bio: ${widget.cvData.bio}'),
//             SizedBox(height: 16.0),
//
//             ElevatedButton(
//               onPressed: () async {
//                 // Navigate to the editing screen
//                 final updatedData = await Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => EditCVScreen(cvData: widget.cvData),
//                   ),
//                 );
//
//                 if (updatedData != null) {
//                   // Update the data on this screen
//                   setState(() {
//                     widget.cvData = updatedData;
//                   });
//                 }
//               },
//               child: Text('Edit CV'),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../models/cv_dart.dart';
import 'edit_cv_screen.dart';

class CVView extends StatefulWidget {
  CVData cvData;

  CVView({required this.cvData});

  @override
  _CVViewState createState() => _CVViewState();
}

class _CVViewState extends State<CVView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My CV',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.purpleAccent, // Change the app bar color
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.cvData.fullName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.0), // Add some spacing
            Text(
              'Slack Username: ${widget.cvData.slackUsername}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'GitHub Handle: ${widget.cvData.githubHandle}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.0), // Add some spacing
            Text(
              'Bio:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0), // Add some spacing
            Text(
              widget.cvData.bio,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40.0),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // Navigate to the editing screen
                  final updatedData = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditCVScreen(cvData: widget.cvData),
                    ),
                  );

                  if (updatedData != null) {
                    // Update the data on this screen
                    setState(() {
                      widget.cvData = updatedData;
                    });
                  }
                },
                child: Text('Edit CV',style: TextStyle(fontSize: 18, color:Colors.black ,fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purpleAccent, // Change button color
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
