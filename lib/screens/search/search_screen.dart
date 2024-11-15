import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/routes/app_routes.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        children: [
          SizedBox(height:30),
          Text("What are\nyou looking for?", style: AppStyles.headLineStyle1.copyWith(fontSize: 40),),
          SizedBox(height: 30,),
          const AppTicketTabs(firstTab: "Airplane tickets",secondTab: "Hotels",),
          SizedBox(height: 30,),
          const AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 30),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 30,),
          const FindTickets(),
          const SizedBox(height: 40),
          AppDoubleText(
              bigText: 'Upcoming Flights',
              smallText: 'view all',
              func: ()=> Navigator.pushNamed(context, AppRoutes.allTickets)
              ),
          const SizedBox(height: 30,),
          const TicketPromotion()
        ],
      ),
    );
  }
}