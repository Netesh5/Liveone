import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'VideoApp.dart';



void main(){
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget image_carousel=new Container(
      height: 200.0,
      child: new Carousel(
        boxFit:BoxFit.cover,
        images:[
          AssetImage("assets/images/1.jpg"),
          AssetImage("assets/images/2.jpg"),
          AssetImage("assets/images/3.jpeg"),
          AssetImage("assets/images/4.png"),
        ],
        autoplay:true,
        animationCurve:Curves.fastOutSlowIn,
        animationDuration:Duration(milliseconds: 2000),
        indicatorBgPadding: 8.0,
      ),

    );
    return MaterialApp(
    home: Scaffold(
        backgroundColor:Color(0xff1F1E1E), 
        appBar:AppBar(
          backgroundColor:Color(0xff1F1E1E),
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.all(Radius.circular(30)) ),
          title: Row(
            children:<Widget>[
              Image.asset("assets/images/logo white.png",height: 60,),
              Text("  LIVE ONE"),
              
            ]
          ),
          
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.search
              ),
              iconSize:30,
             onPressed: () {},
            ),
          ]
          ),
        
            bottomNavigationBar:BottomNavigationBar(
            backgroundColor:Color(0xff1F1E1E),
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 16.1,
            unselectedFontSize: 8,
            unselectedItemColor: Colors.white,
            elevation: 4.0,
            items: [
              
              BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 30,),
                title: Text("Home",
                style:TextStyle(color:Colors.white)),
                
            ),

                BottomNavigationBarItem(
                icon: Icon(Icons.event,size: 30,),
                title: Text("upcoming games",
                style:TextStyle(color:Colors.white)),
            ),
                BottomNavigationBarItem(
                icon: Icon(Icons.more,size: 30,),
                title: Text("more",
                style:TextStyle(color:Colors.white)),
               
            ),
            ],
            onTap: (index){
              setState(() {
                _currentIndex=index;
              });
            }
          ),
          // body:Container(
          //   decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter,
          //     colors: [Color(0xff040303),Color(0xff1F1E1E) ],
          // )
          
          // ),
          
           body: ListView(
             children: <Widget>[
               image_carousel,
               Padding(padding: const EdgeInsets.all(1.0),
               child:Text('   Sort by',style: TextStyle(color:Colors.white,fontSize: 16.0))),
               Sort(),
              //sony
               Padding(padding: const EdgeInsets.all(10.0),
               child: Text('  Sony Channel',style: TextStyle(color:Colors.white,fontSize: 16.0)),
               ),
               Sony(),

               //starsports
              //  Padding(padding: const EdgeInsets.all(10.0),
              //  child: Text('  StarSports Channel',style: TextStyle(color:Colors.white,fontSize: 16.0)),
              //  ),
              //  Star(),

              //  //btsports
              //  Padding(padding: const EdgeInsets.all(10.0),
              //  child: Text('  BtSports',style: TextStyle(color:Colors.white,fontSize: 16.0)),
              //  ),
              //  Bt(),

              //  //espn
              //  Padding(padding: const EdgeInsets.all(10.0),
              //  child: Text('  Espn',style: TextStyle(color:Colors.white,fontSize: 16.0)),
              //  ),
              //  Espn(),

              //  //euro
              //  Padding(padding: const EdgeInsets.all(10.0),
              //  child: Text('  EuroSports',style: TextStyle(color:Colors.white,fontSize: 16.0)),
              //  ),
              //  Euro(),

              //  //sky
              //  Padding(padding: const EdgeInsets.all(10.0),
              //  child: Text('  SkySports',style: TextStyle(color:Colors.white,fontSize: 16.0)),
              //  ),
              //  Sky(),


             ],
          
           ),
          
      ),
      
    );
  } 
}


class Sort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:60.0,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          // Sorting(
          //   image_location:'assets/images/sonyten.png',
          // ),
          // Sorting(
          //   image_location:'assets/images/btsports.png',
          // ),
          // Sorting(
          //   image_location:'assets/images/espn.png',
          // ),
          // Sorting(
          //   image_location:'assets/images/skysports.png',
          // ),
          // Sorting(
          //   image_location:'assets/images/eurosport.jpg',
          // ),
          // Sorting(
          //   image_location:'assets/images/starsports.jpg',
          // ),
        ],
      )
    );
  }

}

class Sorting extends StatelessWidget {
  // final String image_location;
  
// Sorting({
// this.image_location,
// }); 
   @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left:8.0),
    child: InkWell(onTap:(){},
    child:Container(
      width: 90.0,
        //   child: ListTile(
        // title:Image.asset(image_location)
        // ),
    )
    
    ),
      
    );
  }
}


//sony
class Sony extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:60.0,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return Sonylive();
            // return ChewieListItem(videoPlayerController: VideoPlayerController.network('http://oklivetv.com/xplay/4d5463784d67.html'),);
          }));
              },
              child:Image.asset('assets/images/ten1.jpg'),
              ),
         
        ],
      )
    );
  }
}




         
         



// //starsSports
// class Star extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:60.0,
//       child:ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Staring(
//             image_location2:'assets/images/starsports1.jpg',
//           ),
//           Staring(
//             image_location2:'assets/images/starsports2.jpg',
//           ),
//           Staring(
//             image_location2:'assets/images/starsports3.jpg',
//           ),
          
//         ],
//       )
//     );
//   }
// }
// class Staring extends StatelessWidget {
//   final String image_location2;
  
// Staring({
// this.image_location2,
// }); 
//    @override
//   Widget build(BuildContext context) {
//     return Padding(padding: const EdgeInsets.only(left:8.0),
//     child: InkWell(onTap:(){},
//     child:Container(
//       width: 120.0,
//           child: ListTile(
//         title:Image.asset(image_location2)
//         ),
//     )
    
//     ),
      
//     );
//   }
// }



// //btSports
// class Bt extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:60.0,
//       child:ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Bting(
//             image_location3:'assets/images/btsport1.png',
//           ),
//           Bting(
//             image_location3:'assets/images/btsport2.png',
//           ),
//           Bting(
//             image_location3:'assets/images/btsport3.png',
//           ),
//           Bting(
//             image_location3:'assets/images/btsportespn.png',
//           ),
//         ],
//       )
//     );
//   }
// }
// class Bting extends StatelessWidget {
//   final String image_location3;
  
// Bting({
// this.image_location3,
// }); 
//    @override
//   Widget build(BuildContext context) {
//     return Padding(padding: const EdgeInsets.only(left:8.0),
//     child: InkWell(onTap:(){},
//     child:Container(
//       width: 120.0,
//           child: ListTile(
//         title:Image.asset(image_location3)
//         ),
//     )
    
//     ),
      
//     );
//   }
// }


// //espn
// class Espn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:60.0,
//       child:ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Espning(
//             image_location4:'assets/images/espn.png',
//           ),
//           Espning(
//             image_location4:'assets/images/espn2.jpg',
//           ),
          
//         ],
//       )
//     );
//   }
// }
// class Espning extends StatelessWidget {
//   final String image_location4;
  
// Espning({
// this.image_location4,
// }); 
//    @override
//   Widget build(BuildContext context) {
//     return Padding(padding: const EdgeInsets.only(left:8.0),
//     child: InkWell(onTap:(){},
//     child:Container(
//       width: 120.0,
//           child: ListTile(
//         title:Image.asset(image_location4)
//         ),
//     )
    
//     ),
      
//     );
//   }
// }


// //euro
// class Euro extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:60.0,
//       child:ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Euroing(
//             image_location5:'assets/images/eurosport.jpg',
//           ),
//           Euroing(
//             image_location5:'assets/images/eurosport2.jpg',
//           ),
          
//         ],
//       )
//     );
//   }
// }
// class Euroing extends StatelessWidget {
//   final String image_location5;
  
// Euroing({
// this.image_location5,
// }); 
//    @override
//   Widget build(BuildContext context) {
//     return Padding(padding: const EdgeInsets.only(left:8.0),
//     child: InkWell(onTap:(){},
//     child:Container(
//       width: 120.0,
//           child: ListTile(
//         title:Image.asset(image_location5)
//         ),
//     )
    
//     ),
      
//     );
//   }
// }



// //sky
// class Sky extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:60.0,
//       child:ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Skying(
//             image_location6:'assets/images/skysportarena.jpg',
//           ),
//           Skying(
//             image_location6:'assets/images/skysportevent.png',
//           ),
//           Skying(
//             image_location6:'assets/images/skysportgolf.png',
//           ),
//           Skying(
//             image_location6:'assets/images/skysportsaction.png',
//           ),
//           Skying(
//             image_location6:'assets/images/skysportscricket.png',
//           ),
//           Skying(
//             image_location6:'assets/images/skysportsf1.png',
//           ),
//           Skying(
//             image_location6:'assets/images/skysportsfootball.png',
//           ),
//           Skying(
//             image_location6:'assets/images/skysportsnews.png',
//           ),
//           Skying(
//             image_location6:'assets/images/skysportsmix.png',
//           ),
//         ],
//       )
//     );
//   }
// }
// class Skying extends StatelessWidget {
//   final String image_location6;
  
// Skying({
// this.image_location6,
// }); 
//    @override
//   Widget build(BuildContext context) {
//     return Padding(padding: const EdgeInsets.only(left:8.0),
//     child: InkWell(onTap:(){},
//     child:Container(
//       width: 120.0,
//           child: ListTile(
//         title:Image.asset(image_location6)
//         ),
//     )
    
//     ),
      
//     );
//   }
// }


