import 'package:flutter/material.dart';

class DisplayCardWidget extends StatelessWidget {
  final String resim, restoranAd, rating,  siparisTur, teslimatSure, mesafe, promosyon;
  final int minSiparis;




  DisplayCardWidget(
      {
        required this.resim,
        required this.restoranAd,
        required this.rating,
        required this.minSiparis,
        required this.siparisTur,
        required this.teslimatSure,
        required this.mesafe,
        required this.promosyon
      });

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 160,
        height: 230,
        decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),

        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(

                children: [


                  Image.asset(resim,scale: 3,),
                  Positioned(
                    left: 0.3,
                    bottom: 0.3,
                    child: Container(alignment: Alignment.center,
                      child: Row(
                        children: [
                          const Icon(Icons.star,color: Colors.white,size: 15,),
                          Text(" $rating ",style: TextStyle(color: Colors.white,fontSize: 13),),
                        ],
                      ),
                      color: Color(0xff60de00),
                    ),
                  ),
                  Positioned(
                    bottom: 3,
                    right: 3,
                    child: Stack(alignment: Alignment.center,
                      children: const [
                        Icon(Icons.circle,color: Colors.white,size: 40,),
                        Icon(Icons.favorite_border,color: Colors.grey,size: 25,),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.orange.shade700),
                    margin: EdgeInsets.only(left: 1, top: 1),
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),

                    child: Text(promosyon,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0,top: 5),
              child: Text('$restoranAd',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text('$minSiparis TL • $siparisTur',style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Row(
                children: [
                  Icon(Icons.motorcycle,size: 20,),
                  Text('${teslimatSure}dk•${mesafe} km',style: const TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey),),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}