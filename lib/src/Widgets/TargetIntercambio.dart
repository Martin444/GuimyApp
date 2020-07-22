import 'package:flutter/material.dart';
class TargetIntercambio extends StatelessWidget {
  final String icon;
  final String promo;
  TargetIntercambio({@required this.icon, this.promo = "Cargando..."});
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100.0,
      // height: 300.0,
      child: Column(
        children: [
          Image(image: AssetImage("lib/src/Sources/iconsCoins/$icon.png")),
          
          Row(
            children: [
              Image(image: AssetImage("lib/src/Sources/iconsCoins/guimiCoin.png"),width: 20.0,),
              Text("45",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,fontSize: 25.0),)
            ],
          ),

          Text("$promo",style: TextStyle(color: Colors.orange[300], fontWeight: FontWeight.w600,fontSize: 15.0),),
          _BotonRegalar(),
          _BotonComprar()
        ],
      ),
    );
  }
}

class _BotonRegalar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.orange,
      width: size.width / 3.5,
      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
      margin: EdgeInsets.symmetric(vertical: 2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.orange,
      ),
      child: Text("Comprar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
      alignment: Alignment.center,
    );
  }
}

class _BotonComprar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.orange,
      width: size.width / 3.5,
      padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
      margin: EdgeInsets.symmetric(vertical: 2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.transparent,
        border: Border.all(
          color: Colors.orange,width: 2.0
        )
      ),
      child: Text("Regalar", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,),),
      alignment: Alignment.center,
    );
  }
}