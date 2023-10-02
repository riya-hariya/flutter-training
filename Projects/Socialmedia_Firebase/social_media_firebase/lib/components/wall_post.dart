import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media_firebase/components/like_button.dart';

class WallPost extends StatefulWidget {
  final String message;
  final String user;
  final String postId;
  final List<String> likes;
  
  const WallPost({
    super.key,required this.message,required this.user,required this.postId,required this.likes
    });

  @override
  State<WallPost> createState() => _WallPostState();
}

class _WallPostState extends State<WallPost> {
  final currentUser = FirebaseAuth.instance.currentUser!;
  bool isLiked=false;

@override
void initState(){
  super.initState();
  isLiked=widget.likes.contains(currentUser.email);
}
//toggle like
void togglelike(){
  setState(() {
    isLiked=!isLiked;
  });
  //access the document is firebase
  DocumentReference postRef=FirebaseFirestore.instance.collection('User Posts').doc(widget.postId);

  if(isLiked){
    //if the post is now liked,add the user's email from into Likes field
    postRef.update({'Likes':FieldValue.arrayUnion([currentUser.email])
    });
  } else{
    //if the post is now unliked,remove the user's email from Likes field
    postRef.update({'Likes':FieldValue.arrayRemove([currentUser.email])
  });
}
}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white),
      margin: EdgeInsets.only(top: 25,left: 25,right: 25),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Column(
            children: [
              //like button
              LikeButton(
                isLiked: isLiked, onTap: togglelike,),
              //like count

              const SizedBox(height: 5,),
              Text(
                widget.likes.length.toString(),
                style: TextStyle(color: Colors.grey),),
            ],
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.message,style: TextStyle(color: Colors.grey[500]),),
              const SizedBox(height: 10,),
              Text(widget.user),
            
            ],
          )
        ],
      ),
    );
  }
}
