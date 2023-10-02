import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_firebase/components/textbox.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //user
  final currentUser=FirebaseAuth.instance.currentUser!;

  //edit field
  Future<void> editField(String field) async {

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page",
      style: TextStyle(backgroundColor: Colors.grey),
      )),

      body: ListView(
        children: [
          SizedBox(height: 50,),

          //profile pic
          Icon(Icons.person,size: 72,),

          //user email
          Text(
            currentUser.email!,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700]),
            ),

          const SizedBox(height: 50,),

          //user details
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Text("My details",style: TextStyle(color: Colors.grey[600]),),
          ),

          //username
          MyTextBox(
            text: 'Riya',
            sectionName: 'username',
            onPressed: () => editField('username'),
            ),

          //bio
          MyTextBox(
            text: 'empty bio',
            sectionName: 'bio',
            onPressed: () => editField('bio'),
            ),

          const SizedBox(height: 50,),

          //user posts
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Text("My Posts",style: TextStyle(color: Colors.grey[600]),),
          ),
        ],
      ),
    );
  }
}