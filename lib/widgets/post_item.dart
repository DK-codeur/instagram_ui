// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children:[
          
          //Partie A
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2019/03/09/21/30/downtown-4045036_960_720.jpg"),
            ),

            title: Text(
              "zinedine_zid",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
            ),

            trailing: Icon(Icons.more_vert, color: Colors.white,),
          ),
          
          SizedBox(height: 12,),


          //Partie B
          Container( 
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2019/03/09/21/30/downtown-4045036_960_720.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),

          SizedBox(height: 10,),


          //Partie C
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Row(
                  children:[
                    Icon(Icons.favorite, color: Colors.red, size: 27,),
                    SizedBox(width: 20,),
                    Icon(Icons.mode_comment_outlined, color: Colors.white, size: 27,),
                    SizedBox(width: 20,),
                    Icon(Icons.send_outlined, color: Colors.white, size: 27,),
                  ],
                ),

                Icon(Icons.bookmark_outline, color: Colors.white, size: 27,),
              ],
            ),
          ),

          SizedBox(height: 12,),

          //Partie D
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "Aimé par ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  )
                ),

                TextSpan(
                  text: "killiane ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  )
                ),

                TextSpan(
                  text: "et ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  )
                ),
                TextSpan(
                  text: "2 495 autres personnes",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  )
                ),
              ]
            )
            ),
          ),

          SizedBox(height: 12,),

          Padding(
            padding: EdgeInsets.only(left: 15,right: 15),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "zinedine_zid ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700
                    )
                  ),
                  TextSpan(
                    text: "Hello! voici une photo de mon beau quartier",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    )
                  ),

                ]
              )
            )
          ),

            SizedBox(height: 12,),


          //Partie E
          Padding(
            padding: EdgeInsets.only(left: 15,right: 15),
            child: Text(
              "Voir les 123 commentaires",style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
            ),
          ),

          SizedBox(height: 12,),

          Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                Row(
                  children:[
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/media/Eq6bKrUXYAMr1yG?format=jpg&name=large"
                      ),
                    ),

                    SizedBox(width: 15,),

                    Text(
                      "Ajouter un commentaire...",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    ),

                  ],
                ),

                Row(
                  children:[
                    Text("😂",style: TextStyle( fontSize:  20),),
                    SizedBox(width: 10,),
                    Text("😍",style: TextStyle( fontSize:  20 ),),
                    SizedBox(width: 10,),
                    Icon(Icons.add_circle,color: Colors.white.withOpacity(0.5),size: 18,)
                  ],
                )
              ],
            )
          ),

          SizedBox(height: 12,),

          Padding(
            padding: EdgeInsets.only(left: 15,right: 15),
            child:  Text(
              "Il y a 3 heures",
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}