import 'package:flutter/material.dart';

class AppBarWidgetP extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 80.0,
      width: double.infinity,
      //decoration: BoxDecoration(
      //  color: Colors.blue,
      //  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight:Radius.circular(20.0) )
      //),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight:Radius.circular(20.0)) ,
        ),
        margin: EdgeInsets.only(left: 0.0,right: 0.0, top: 0.0,bottom: 5.0),
        elevation: 10.0,
        child: Container(
          width: double.infinity,
          height: 80.0,
          //color: Colors.red,
          child: Container(
            decoration: BoxDecoration(
              //color: Colors.orange,
              gradient: LinearGradient(
                colors: [Colors.white,Colors.grey[300]],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight:Radius.circular(20.0)) 
            ) ,
            child: _contenidoAppBar(),
            //color: Colors.blue,
          ),
        )
      ),
    );
  }

  Widget _contenidoAppBar(){
    //final img = (NetworkImage("https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png") == null)?AssetImage("lib/src/Sources/IconsBar/Pasteles.png",):NetworkImage("https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png");

    final tamIconAvatar = 25.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ########################

          CircleAvatar(
            radius: 30.0,
            //backgroundColor: Colors.black,
            backgroundImage: NetworkImage("https://i.pravatar.cc/200"),
            //backgroundColor: Colors.blue,
          ),

          //Image.network("https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX24476126.jpg"),


          // ########################

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hola"),
                  Text("Mundo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)
                ],
              ),
            ),
          ),

          // ########################

           CircleAvatar(
            radius: tamIconAvatar,
            backgroundImage: AssetImage("lib/src/Sources/IconsBar/AvatarRegalo.png"),
            //backgroundColor: Colors.transparent,
            //backgroundColor: Colors.blue,
          ),

          // #########################

           CircleAvatar(
            radius: tamIconAvatar,
            backgroundImage: AssetImage("lib/src/Sources/IconsBar/AvatarTicket.png"),
            //backgroundColor: Colors.transparent,
            //backgroundColor: Colors.blue,
          ),

          // #########################

           CircleAvatar(
            radius: tamIconAvatar,

            backgroundImage: AssetImage("lib/src/Sources/IconsBar/AvatarCampana.png",),
            //backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}