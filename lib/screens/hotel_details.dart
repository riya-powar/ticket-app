import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index=0;
  void didChangeDependencies(){
    var args= ModalRoute.of(context)!.settings.arguments as Map;
    index=args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            //floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              //title: Text(hotelList[index]["place"], style: TextStyle(color: Color(0xFFFFFFFF)) ,),
              background: Stack(
                children: [
                  Positioned.fill(child: Image.asset("assets/images/${hotelList[index]["image"]}",
                                fit: BoxFit.cover,
              )),
                  Positioned(
                    bottom: 20,
                    right: 70,
                    child: Container(
                      padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      color: Colors.black.withOpacity(0.4),
                      child: Text(hotelList[index]["place"], style: TextStyle(fontSize: 24, color: Color(0xFFFFFFFF)),)
                      )
                  ,)
                ],
              )
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
             const Padding(
               padding: EdgeInsets.all(16),
               child: Text("sdwefenfji njfdnjrngrejtgjsfnklaekjtrw4kmf4fm jgjhsidrjeawkfmasiddorkwe iefu3rigti5gnrkmdflkererkokswodeofjmfkwd krjfhreghwjgfdnvfn948tuwfjwf8309opppnh\nsdwefenfji njfdnjrngrejtgjsfnklaekjtrw4kmf4fm jgjhsidrjeawkfmasiddorkwe iefu3rigti5gnrkmdflkererkokswodeofjmfkwd krjfhreghwjgfdnvfn948tuwfjwf8309opppnh\nsdwefenfji njfdnjrngrejtgjsfnklaekjtrw4kmf4fm jgjhsidrjeawkfmasiddorkwe iefu3rigti5gnrkmdflkererkokswodeofjmfkwd krjfhreghwjgfdnvfn948tuwfjwf8309opppnh"),
               
             ),
             const Padding(
              padding: EdgeInsets.all(16),
              child: Text("More images", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)
             ),
             Container(
              height: 200,
              width: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    /*SizedBox(width: 30,),
                    child: Image.network('https://picsum.photos/250?image=9')*/
                    child: Row(
                      children: [
                        Image.network('https://picsum.photos/250?image=9'),
                        SizedBox(width: 30,)
                      ],
                    )
                    );
                },
              ),
             )
            ]
          ),)
        ],
      )
    );
  }
}