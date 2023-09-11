import 'package:flutter/material.dart';
import 'package:my_cv_app/models/cv_dart.dart';


class EditCVScreen extends StatefulWidget {
  final CVData cvData;

  EditCVScreen({required this.cvData});

  @override
  _EditCVScreenState createState() => _EditCVScreenState();

}

class _EditCVScreenState extends State<EditCVScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackUsernameController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.cvData.fullName;
    slackUsernameController.text = widget.cvData.slackUsername;
    githubHandleController.text = widget.cvData.githubHandle;
    bioController.text = widget.cvData.bio;
  }

  @override
  void dispose() {
    fullNameController.dispose();
    slackUsernameController.dispose();
    githubHandleController.dispose();
    bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit CV'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Full Name'),
            TextField(controller: fullNameController),
            Text('Slack Username'),
            TextField(controller: slackUsernameController),
            Text('GitHub Handle'),
            TextField(controller: githubHandleController),
            Text('Bio'),
            TextField(controller: bioController),
            SizedBox(height: 16.0),
            ElevatedButton(

              onPressed: () {
                // Update CV data

                widget.cvData.fullName = fullNameController.text ;
                widget.cvData.slackUsername = slackUsernameController.text;
                widget.cvData.githubHandle = githubHandleController.text;
                widget.cvData.bio = bioController.text;
                // Navigate back to CV view
                Navigator.pop(context, widget.cvData);
              },
              child: Text('Save Changes',style: TextStyle(fontSize: 18, color:Colors.black ,fontWeight: FontWeight.bold),),
            // g   primary: Colors.purpleAccent, // Change button color
            // ),
            ),
          ],
        ),
      ),
    );
  }
}

