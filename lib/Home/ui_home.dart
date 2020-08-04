import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'chewie_video.dart';
import 'package:video_player/video_player.dart';

// ignore: non_constant_identifier_names

MyApp()
{ 
   bool play=false;
   bool stop=true;
   
   var aud_pl=AudioPlayer();
   final audio=AudioCache(fixedPlayer: aud_pl);

   //from url
   void play_url(var url)
   { 
     if(play==false || stop==true)
     {
     aud_pl.play(url);
     play=true;
      stop=false;
     }
   }
   // ignore: non_constant_identifier_names
   void play_Audio(var name)
   {
     if(play==false || stop==true)
     {
      audio.play(name);
      play=true;
      stop=false;
     }
   }
   void pause_audio()
   {
     if(play==true)
     {
       aud_pl.pause();
       play=false;
     }
   }
   void stop_audio()
   {
     if (play == true && stop == false) {
      aud_pl.stop();
      play = false;
      stop = true;
      }
      }
 //---------------------Video Section---------------
 
  var sub= Column(children:<Widget>[
                      Container(
                        margin: EdgeInsets.all(30),
                        width:double.infinity,
                        child:Text("Music",
                        style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline,
                        )
                        )
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row( 
                        
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,                     
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                     
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/1.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width:double.infinity,
                                  height:50,
                                  color:Color(0x715C5B5B),
                                  
                                  child: Row(
                                  
                                    children:<Widget>[
                                       SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){play_Audio("1.mp3");},
                                          child: Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          ),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){pause_audio();},
                                          child: Icon(Icons.pause),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed: (){stop_audio();},
                                          child: Icon(
                                          Icons.stop,
                                          ),
                                          ),
                                          )

                                    ]
                                  ),
                                ),
                                ),
                            ),
                          Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/2.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width:double.infinity,
                                  height:50,
                                  color:Color(0x8FACACAC),
                                  child: Row(
                                  
                                    children:<Widget>[
                                  SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){play_Audio("2.mp3");},
                                          child: Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          ),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){pause_audio();},
                                          child: Icon(Icons.pause),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed: (){stop_audio();},
                                          child: Icon(
                                          Icons.stop,
                                          ),
                                          ),
                                          )

                                  ]
                                  ),
                                ),
                                ),
                            ),
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/3.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width:double.infinity,
                                  height:50,
                                  color:Color(0x715C5B5B),
                                  child: Row(
                                  
                                    children:<Widget>[
                                    SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){play_Audio("3.mp3");},
                                          child: Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          ),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){pause_audio();},
                                          child: Icon(Icons.pause),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed: (){stop_audio();},
                                          child: Icon(
                                          Icons.stop,
                                          ),
                                          ),
                                          )

                                    ]
                                  ),
                                ),
                                ),
                            ),
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/4.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width:double.infinity,
                                  height:50,
                                  color:Color(0x715C5B5B),
                                  child: Row(
                                  
                                    children:<Widget>[
                                 SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){play_Audio("4.mp3");},
                                          child: Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          ),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){pause_audio();},
                                          child: Icon(Icons.pause),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed: (){stop_audio();},
                                          child: Icon(
                                          Icons.stop,
                                          ),
                                          ),
                                          )
   ]
                                  ),
                                ),
                                ),
                            ),
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/5.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width:double.infinity,
                                  height:50,
                                  color:Color(0x715C5B5B),
                                  child: Row(
                                  
                                    children:<Widget>[
                                  SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){play_url("https://github.com/Shashwatsingh22/Trola/blob/master/music/5.mp3");},
                                          child: Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          ),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){pause_audio();},
                                          child: Icon(Icons.pause),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed: (){stop_audio();},
                                          child: Icon(
                                          Icons.stop,
                                          ),
                                          ),
                                          )
                                  ]
                                  ),
                                ),
                                ),
                            ),
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/6.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width:double.infinity,
                                  height:50,
                                  color:Color(0x715C5B5B),
                                  child: Row(
                                  
                                    children:<Widget>[
                                  SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){play_url("https://github.com/Shashwatsingh22/Trola/blob/master/music/6.mp3");},
                                          child: Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          ),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){pause_audio();},
                                          child: Icon(Icons.pause),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed: (){stop_audio();},
                                          child: Icon(
                                          Icons.stop,
                                          ),
                                          ),
                                          )
                                  ]
                                  ),
                                ),
                                ),
                            ),
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/7.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width:double.infinity,
                                  height:50,
                                  color:Color(0x715C5B5B),
                                  child: Row(
                                  
                                    children:<Widget>[
                                  SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){play_url("https://github.com/Shashwatsingh22/Trola/blob/master/music/7.mp3");},
                                          child: Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          ),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){pause_audio();},
                                          child: Icon(Icons.pause),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed: (){stop_audio();},
                                          child: Icon(
                                          Icons.stop,
                                          ),
                                          ),
                                          )
                                  ]
                                  ),
                                ),
                                ),
                            ),
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/8.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width:double.infinity,
                                  height:50,
                                  color:Color(0x715C5B5B),
                                  child: Row(
                                  
                                    children:<Widget>[
                                  SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){play_url("https://github.com/Shashwatsingh22/Trola/blob/master/music/8.mp3");},
                                          child: Icon(
                                          Icons.play_arrow,
                                          size: 30,
                                          ),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed:(){pause_audio();},
                                          child: Icon(Icons.pause),
                                          ),
                                          ),
                                          SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: FlatButton(
                                          onPressed: (){stop_audio();},
                                          child: Icon(
                                          Icons.stop,
                                          ),
                                          ),
                                          )
                                   ]
                                  ),
                                ),
                                ),
                            ),
                          ],
                        ),),
                        Container(
                       
                        margin: EdgeInsets.all(30),
                        width:double.infinity,
                        child:Text("Videos",
                        style: GoogleFonts.fredokaOne(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 1,
                          decoration: TextDecoration.underline,
                        )
                        )),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row( 
                        
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,                     
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                               child: ChewieListItem(
                             videoPlayerController: VideoPlayerController.asset(
                              'video/1.mp4',
                            ),
                            looping: true,
                          ),
                              decoration: BoxDecoration(
                                 image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/v1.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                            ),

                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                               child: ChewieListItem(
                             videoPlayerController: VideoPlayerController.asset(
                              'video/2.mp4',
                            ),
                            looping: true,
                          ),
                              decoration: BoxDecoration(
                                 image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/v2.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                            ),
                          
                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                              child: ChewieListItem(
                             videoPlayerController: VideoPlayerController.asset(
                              'video/3.mp4',
                            ),
                            looping: true,
                          ),
                              decoration: BoxDecoration(
                                 image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/v3.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                            ),

                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                              child: ChewieListItem(
                             videoPlayerController: VideoPlayerController.asset(
                              'video/4.mp4',
                            ),
                            looping: true,
                          ),
                              decoration: BoxDecoration(
                                 image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/v4.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                            ),

                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                              child:ChewieListItem(
                                videoPlayerController: VideoPlayerController.network(
                                  'https://github.com/Shashwatsingh22/Trola/blob/master/videos/5.mp4',
                                ),
                             ),
                              decoration: BoxDecoration(
                                 image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/v5.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                            ),

                          Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                              
                              //child:ChewieListItem(
                                //videoPlayerController: VideoPlayerController.network(
                                 // 'https://github.com/Shashwatsingh22/Trola/blob/master/videos/6.mp4',
                               // ),),
                              decoration: BoxDecoration(
                                 image:DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/v6.jpg"),),
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                            ),

                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                             // child:ChewieListItem(
                               // videoPlayerController: VideoPlayerController.network(
                                 // 'https://github.com/Shashwatsingh22/Trola/blob/master/videos/7.mp4',
                                //),),
                              decoration: BoxDecoration(
                                 image:DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/v7.jpg"),),
                              
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                            ),

                            Container(
                              width: 300,
                              height: 250,
                              margin: EdgeInsets.fromLTRB(20, 0, 20,0),
                                //child:ChewieListItem(
                                //videoPlayerController: VideoPlayerController.network(
                                //  'https://github.com/Shashwatsingh22/Trola/blob/master/videos/8.mp4',
                                //),),
                              decoration: BoxDecoration(
                                 image:DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://raw.githubusercontent.com/Shashwatsingh22/Trola/master/images/v8.jpg"),),
                              
                                borderRadius: BorderRadius.circular(15),
                               border: Border.all(
                                 width: 2,
                                 color: Colors.white70,
                                )
                              ),
                            ),
                        
                          ],
                        ),)
  ]);
   
  var mybody= Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black87,
                        child: sub,
                        );

   var scaf=Scaffold(
                      appBar: AppBar(
                        title: Text(
                                    "Trola",
                                  style: GoogleFonts.abrilFatface(
                                    textStyle : TextStyle(
                                      color: Colors.white, 
                                    letterSpacing: 3,
                                    fontSize: 30),
                                        ), 
                                    ),
                        backgroundColor: Colors.black87,
                        actions: <Widget>[Icon(Icons.account_circle,
                        size: 45,)], 
                      ), 
                      body: mybody ,
                     );

  return MaterialApp(
                     home: scaf ,
                     debugShowCheckedModeBanner: false,

  );
}