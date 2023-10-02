import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media_firebase/Pages/profile_page.dart';
import 'package:social_media_firebase/components/drawer.dart';
import 'package:social_media_firebase/components/text_field.dart';
import 'package:social_media_firebase/components/wall_post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //user
  final currentUser = FirebaseAuth.instance.currentUser!;
  final textController=TextEditingController();
  
  //signout
  void signout(){
    FirebaseAuth.instance.signOut();

  }
  void postMessage(){
    //only post if there is something in the textfield
    if(textController.text.isNotEmpty){
      //store in firebase
      FirebaseFirestore.instance.collection("User Posts").add({
        'UserEmail': currentUser.email,
        'Message': textController.text,
        'TimeStamp': Timestamp.now(),
        'Likes':[], //empty list
    });
    }

    //clear the message
    setState(() {
      textController.clear();
    });
  }
   void gotoProfilePage(){
    //pop menu drawer
    Navigator.pop(context);

    //goto profile page
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage(),));
   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: MyDrawer(
        onProfileTap: gotoProfilePage,
        onSignOut: signout,
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
  
        title: Text("The Wall"),
        actions: [
          IconButton(
           onPressed: signout,
           icon: Icon(Icons.logout))
        ],
        ),
        body: Center(
          child: Column(
            children: [
              //the wall
              Expanded(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                  .collection("User Posts")
                  .orderBy("TimeStamp",descending: false).snapshots(),
                   builder: (context, snapshot) {
                     if(snapshot.hasData){
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          //get the message first
                          final post = snapshot.data!.docs[index];
                          return WallPost(
                            message: post['Message'],
                            user: post['UserEmail'],
                            postId: post.id,
                            likes: List<String>.from(post['Likes']?? []), //?? is for null check
                            );
                        },
                        );
                     } else if(snapshot.hasError){
                        return Center(child: Text("Error ${snapshot.error}"));
                     }
                     return const Center(child: CircularProgressIndicator(),);
                   },)
                   ),
              //post message
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: MyTextfield(
                        controller: textController,
                         hintText: 'Write something on the wall..',
                          obscureText: false),
                    ),
              
                    //post button
                    IconButton(
                      onPressed: postMessage,
                      icon: Icon(Icons.arrow_circle_up))
                  ],
                ),
              ),

              //logged in
              Text("Logged in as " +currentUser.email!,
              style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 50,),
            ],
          ),
        ),
      
    );
  }
}