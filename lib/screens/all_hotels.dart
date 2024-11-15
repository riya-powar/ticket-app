import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/routes/app_routes.dart';
//import 'package:ticket_app/screens/widgets/hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text("All Hotels"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.9
            ), 
            itemCount: hotelList.length,
            itemBuilder: (context, index){
              var singleHotel = hotelList[index];
              return HotelGridView(hotel: singleHotel, index: index);
            }
            ),
        ),
      ),
    );
  }
}


class HotelGridView extends StatelessWidget {
  final Map<String,dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});
  
  
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap:(){
       // var index = hotelList.indexOf(hotel);
        
        Navigator.pushNamed(context, AppRoutes.hotelDetails,
          arguments: {"index": index}
        );
      },
      child: Container(
        margin: EdgeInsets.only(right:16),
        padding: const EdgeInsets.all(20),
        //width: size.width*0.5,
        height: size.height*0.80,
        
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                //height: 350,
                decoration: BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}")
                )
               ),
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(hotel['place'], style: AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor)),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(hotel['destination'], style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
            ),
            SizedBox(width: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("\$${hotel['price']}/per night", style: AppStyles.headLineStyle4.copyWith(color: AppStyles.kakiColor)),
            )
              ],
            )
          ],
        ),
      ),
    );
  }
}


