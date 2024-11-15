import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_textlayout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

  late int ticketIndex =0;
  @override
  void didChangeDependencies(){
    if(ModalRoute.of(context)!.settings.arguments!=null){
      var args= ModalRoute.of(context)!.settings.arguments as Map;
    ticketIndex = args["index"];
    }
    
    //print("passed index ${args["index"]}");
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text("Tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: ListView(
        
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        children: [
          //const SizedBox(height: 40,),
          //Text("Tickets",style: AppStyles.headLineStyle1,),
          //const SizedBox(height: 30,),
          AppTicketTabs(firstTab: "Upcoming",secondTab: "Previous",),
          const SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: TicketView(ticket: ticketList[ticketIndex], isColor: true,)
          ),
          SizedBox(height: 2,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal:15),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            color: AppStyles.ticketColor,
            child: Column(
            
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextlayout(topText: "Flutter DB", bottomText: "Passenger", align: CrossAxisAlignment.start, isColor: true,),
                    AppColumnTextlayout(topText: "5221 364869", bottomText: "Passport", align: CrossAxisAlignment.end, isColor: true,),

                  ],
                ),
                SizedBox(height: 30,),
                AppLayoutBuilderWidget(randomDivider: 17, width: 5, isColor: false,),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextlayout(topText: "4563 7547568", bottomText: "Number of E-ticket", align: CrossAxisAlignment.start, isColor: true,),
                    AppColumnTextlayout(topText: "B467284", bottomText: "Booking code", align: CrossAxisAlignment.end, isColor: true,),

                  ],
                ),
                SizedBox(height: 30,),
                AppLayoutBuilderWidget(randomDivider: 17, width: 5, isColor: false,),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(children: [
                          Image(image: AssetImage(AppMedia.visaCard),width: 100, height:40,),
                          SizedBox(width: 1,),
                          Text("*** 8956", style: AppStyles.headLineStyle3,)
                          
                        ],),
                        const SizedBox(height: 10),
                        //Text("payment method", style: AppStyles.textStyle, textAlign: TextAlign.start,)
                        TextStyleFourth(text: "Payment method",isColor: true, align: TextAlign.left,)
                      ],
                    ),
                    AppColumnTextlayout(topText: "\$250", bottomText: "Price", align: CrossAxisAlignment.end, isColor: true,),

                  ],
                ),
              ],
            )
          ),
          SizedBox(height: 2,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              color: AppStyles.ticketColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(21),
                bottomLeft: Radius.circular(21),
                )
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BarcodeWidget(
                  height: 200,
                  width: double.infinity,
                  data: 'https://www.youtube.com/',
                 barcode: Barcode.code128(),
                 drawText: false,
                 color: AppStyles.textColor,
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: TicketView(ticket: ticketList[ticketIndex],)
          ),
          
        ],
      )
    );
  }
}