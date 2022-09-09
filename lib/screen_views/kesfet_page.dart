
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendyol_yemek_ui/components/display_card_widget.dart';


class KesfetSayfa extends StatefulWidget {
  const KesfetSayfa({Key? key}) : super(key: key);

  @override
  State<KesfetSayfa> createState() => _KesfetSayfaState();
}

class _KesfetSayfaState extends State<KesfetSayfa> {
  static const List<String> list = <String>['Ev Adresim', 'İş Adresim', 'Okul Adresim'];
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  String dropdownValue=list.first;

  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.white))
        ),
        height: 58,
        child: CustomLineIndicatorBottomNavbar(
          selectedIconSize: 25,
          unselectedIconSize: 25,
          selectedColor: Colors.orange.shade700,
          unSelectedColor: Colors.grey,
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          enableLineIndicator: false,


          customBottomBarItems: [
            CustomBottomBarItems(icon: Icons.explore, label: "Keşfet"),
            CustomBottomBarItems(icon: Icons.storefront, label: "Restoranlar"),
            CustomBottomBarItems(icon: Icons.shopping_basket, label: "Sepet"),
            CustomBottomBarItems(icon: Icons.flatware, label: "Siparişlerim"),

          ],

        ),
      ),
      backgroundColor: Color(0xffe8e8e8),
      appBar: AppBar(
        toolbarHeight: 94,
        backgroundColor: Colors.white,
        elevation: 8,
        title: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    print("TrendyolYemek'ten çıkıldı");
                  }, icon: const Icon(Icons.close),color: Colors.black45,),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(30),bottom: Radius.circular(30)),color: Colors.white,border: Border.all(color: Colors.grey,width: 1)),
                      child: Stack(
                          children:[
                            Positioned(
                              child: Row(
                                children: [
                                  Icon(Icons.location_on,color: Colors.orange.shade700,),
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_drop_down,color: Colors.orange,),
                                    elevation: 12,
                                    style: const TextStyle(color: Colors.black54),
                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child:
                                        Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ),
                            // Positioned(
                            //   top: 10,
                            //   child: Container(
                            //     width: 135,
                            //     height: 30,
                            //     decoration: BoxDecoration(
                            //         borderRadius: BorderRadius.circular(30),
                            //         border: Border.all(color: Colors.black54,width: 1)
                            //     ),),
                            // ),
                          ]
                      )
                  ),
                  Spacer(),
                  Stack(children: [
                    IconButton(icon:const Icon(Icons.confirmation_number,size: 30,),color: Colors.grey, onPressed: () {},),
                    Positioned(top: 18,left: 12, child: Icon(Icons.percent,color: Colors.white,size: 12,)),
                  ],
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(Icons.search),
                          color: Colors.orange,
                          onPressed: () {},
                          alignment: Alignment.centerLeft,),
                        Container(
                          width: 250,
                          height: 50,
                          margin: EdgeInsets.only(top:15),
                          child: TextField(
                            maxLines: 1,
                            decoration: new InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: "Restoran, ürün veya mutfak ara"),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffdedede),
                      borderRadius: BorderRadius.circular(10.0),),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.tune),color: Colors.black45,splashColor: Colors.grey,splashRadius: 15,)
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body:

      SingleChildScrollView(


        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,



          children: [
            //Mutfaklar
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 10),
              child: const Text("Mutfaklar",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            //Mutfaklar kategoriler
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 100,
                        height: 155,
                        child: Stack(

                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),

                              child: SizedBox(width: 100,height: 155, child: ColoredBox(color: Colors.white,)),


                            ),
                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("resimler/burger.png",scale: 5,),
                                Text("Burger",
                                  style: GoogleFonts.oxygen(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,),),
                                Text("(150 Restoran)",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,

                                      fontSize: 10),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 100,
                        height: 155,
                        child: Stack(


                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),

                              child: SizedBox(width: 100,height: 155, child: ColoredBox(color: Colors.white,)),


                            ),

                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("resimler/doner.png",scale: 5,),

                                Text("Döner",
                                  style: GoogleFonts.oxygen(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,),),
                                Text("(50 Restoran)",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,

                                      fontSize: 10),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 100,
                        height: 155,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),

                              child: SizedBox(width: 100,height: 155, child: ColoredBox(color: Colors.white,)),


                            ),
                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("resimler/evyemekleri.png",scale: 5,),
                                Text("Ev Yemekleri",
                                  style: GoogleFonts.oxygen(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,),),
                                Text("(32 Restoran)",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,

                                      fontSize: 10),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 100,
                        height: 155,
                        child: Stack(


                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),

                              child: SizedBox(width: 100,height: 155, child: ColoredBox(color: Colors.white,)),


                            ),

                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("resimler/kahvalti.png",scale: 5,),

                                Text("Kahvaltı",
                                  style: GoogleFonts.oxygen(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,),),
                                Text("(11 Restoran)",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,

                                      fontSize: 10),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 100,
                        height: 155,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),

                              child: SizedBox(width: 100,height: 155, child: ColoredBox(color: Colors.white,)),


                            ),
                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("resimler/kofte.png",scale: 5,),
                                Text("Köfte",
                                  style: GoogleFonts.oxygen(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,),),
                                Text("(24 Restoran)",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,

                                      fontSize: 10),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 100,
                        height: 155,
                        child: Stack(


                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),

                              child: SizedBox(width: 100,height: 155, child: ColoredBox(color: Colors.white,)),


                            ),

                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("resimler/lahmacun.png",scale: 5,),

                                Text("Lahmacun",
                                  style: GoogleFonts.oxygen(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,),),
                                Text("(17 Restoran)",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,

                                      fontSize: 10),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 100,
                        height: 155,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),

                              child: SizedBox(width: 100,height: 155, child: ColoredBox(color: Colors.white,)),


                            ),
                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("resimler/tatli.png",scale: 5,),
                                Text("Tatlı",
                                  style: GoogleFonts.oxygen(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,),),
                                Text("(29 Restoran)",
                                  style: GoogleFonts.oxygen(
                                      color: Colors.black,

                                      fontSize: 10),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            //Açık Favori Restoranlar
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0,top: 10),
                  child: Text("Açık Favori Restoranlarım",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.0,top: 10),
                  child: Text("Tümünü Gör",style: TextStyle(fontSize: 10,color: Colors.orange,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            //Adresinize şu anda hizmet veren favori yoktur
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SizedBox(width: 350,height: 25, child: ColoredBox(color: Colors.white,)),
                  ),
                  Row(children: [
                    Icon(Icons.info,color: Colors.orange.shade700,),
                    Text(" Adresinize şu anda hizmet veren favori restoranınız bulunmamaktadır.",style: TextStyle(fontSize: 10,color: Colors.black87,fontWeight: FontWeight.bold),),
                  ],
                  ),
                ],
              ),
              ],
            ),
            //Sana özel restoranlarText
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0,top: 10),
                  child: Text("Sana Özel Restoranlar",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.0,top: 10),
                  child: Text("Tümünü Gör",style: TextStyle(fontSize: 10,color: Colors.orange,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            //Sana özel restoranlar cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DisplayCardWidget(
                        resim: "resimler/meat_burger.png",
                        restoranAd: "Meat Burger",
                        rating: "4.6 (700+)",
                        minSiparis: 80,
                        siparisTur: "Burger",
                        teslimatSure: "50",
                        mesafe: "5",
                        promosyon: "Trendyol Özel Menü"
                    ),
                    DisplayCardWidget(
                        resim: "resimler/cremeria_milano.png",
                        restoranAd: "Cremeria Milano",
                        rating: "4.1 (250+)",
                        minSiparis: 100,
                        siparisTur: "Tatlı",
                        teslimatSure: "30",
                        mesafe: "3.1",
                        promosyon: "% 20 İndirim"
                    ),
                    DisplayCardWidget(
                        resim: "resimler/inci_profiterol.png",
                        restoranAd: "İnci Profiterol",
                        rating: "4.7 (1000+)",
                        minSiparis: 100,
                        siparisTur: "Tatlı",
                        teslimatSure: "60",
                        mesafe: "4.1",
                        promosyon: "% 20 İndirim"
                    ),
                    DisplayCardWidget(
                        resim: "resimler/oses_cigkofte.png",
                        restoranAd: "Oses Çiğköfte",
                        rating: "4.1 (1000+)",
                        minSiparis: 50,
                        siparisTur: "Tatlı",
                        teslimatSure: "30",
                        mesafe: "2.7",
                        promosyon: "% 20 İndirim"
                    ),

                  ],
                ),
              ),
            ),

            //Kampanyalı RestoranlarText
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0,top: 10),
                  child: Text("Kampanyalı Restoranlar",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10.0,top: 10),
                  child: Text("Tümünü Gör",style: TextStyle(fontSize: 10,color: Colors.orange,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            //Kampanyalı Restoranlar
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DisplayCardWidget(
                        resim: "resimler/la_gateau.png",
                        restoranAd: "La Gateau",
                        rating: "4.6 (700+)",
                        minSiparis: 80,
                        siparisTur: "Dünya Mutfağı",
                        teslimatSure: "50",
                        mesafe: "5",
                        promosyon: "Trendyol Özel Menü"
                    ),
                    DisplayCardWidget(
                        resim: "resimler/papa_johns.png",
                        restoranAd: "Papa Johns",
                        rating: "4.1 (250+)",
                        minSiparis: 100,
                        siparisTur: "Pizza",
                        teslimatSure: "30",
                        mesafe: "3.1",
                        promosyon: "% 20 + Orta Boy Pizza Fırsatı"
                    ),
                    DisplayCardWidget(
                        resim: "resimler/pide_city.png",
                        restoranAd: "Pide City",
                        rating: "4.7 (1000+)",
                        minSiparis: 100,
                        siparisTur: "Pide&Lahmacun",
                        teslimatSure: "60",
                        mesafe: "4.1",
                        promosyon: "% 20 İndirim"
                    ),
                    DisplayCardWidget(
                        resim: "resimler/sushico.png",
                        restoranAd: "Sushico",
                        rating: "4.1 (1000+)",
                        minSiparis: 50,
                        siparisTur: "Dünya Mutfağı",
                        teslimatSure: "30",
                        mesafe: "2.7",
                        promosyon: "% 20 İndirim"
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
