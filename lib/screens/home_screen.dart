import 'package:flutter/material.dart';
import 'package:ticket_app/routes/app_routes.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';



class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}):super(key:key);
  @override
 Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: AppStyles.bgColor,
    body: ListView(
      children: [
        SizedBox(height: 50,),
        Container(

          //color: const Color.fromARGB(255, 155, 213, 239),
          padding: const EdgeInsets.symmetric(horizontal:30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween
              ,
              children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("Good morning", 
                     style: AppStyles.headLineStyle3
                    ),
                    const SizedBox(height: 10),
                    Text("Book Tickets", 
                    style: AppStyles.headLineStyle1   
                   ),
                  ],
                ),
                Container(
                  width: 70,
                  height: 70,
                  //color: Colors.lightGreenAccent[200],
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:  DecorationImage(image: AssetImage(AppMedia.logo),
                    )
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.symmetric(horizontal:12,vertical:12),
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFD1D1D2)
                  ),
              child: const Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search, color: Color(0xFFBFC205),),
                Text("search")
              ],
            ),
          
            ),
            const SizedBox(height: 50,),
            AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'view all',
              func: ()=> Navigator.pushNamed(context, AppRoutes.allTickets)
              ),
            SizedBox(height: 25,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: ticketList.take(2).map((singleTicket)=> TicketView(ticket:singleTicket),
              ).toList(),
              )
              ),
            SizedBox(height: 40,),

            AppDoubleText(
              bigText: 'Hotels',
              smallText: 'view all',
              func: ()=> Navigator.pushNamed(context, AppRoutes.allHotels)
              ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: hotelList.take(2).map((singleHotel)=> Hotel(hotel:singleHotel),
              ).toList(),
              )
            )

            ],
        )
        
        ),
        
       
      ],
    ),
  );
 }
}




