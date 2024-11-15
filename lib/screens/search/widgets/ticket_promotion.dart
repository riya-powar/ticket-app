import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: size.width*0.44,
                height: 730,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],

                  
                ),
                
                child: Column(
                  children: [
                    Container(
                      height: 290,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.planeSeat)
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("20 % discount\non early booking of this Flight.\nDon't Miss.", style: AppStyles.headLineStyle1.copyWith(fontSize: 55), textAlign: TextAlign.start,)
                  ],
                )
              ),
              Column(
                children:[
                 Stack(
                  children: [
                     Container(
                    padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
                    width: size.width*0.44,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xFF3AB8B8)
                    ),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text(
                          "Discount\nFor Survey", style: AppStyles.headLineStyle1.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            )
                          ),
                        SizedBox(height: 40,),
                        Text(
                          "Take the survey about our services and get discount", style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white
                            ),
                          )
                      ],
                    ),
                  ),

                Positioned(
                  right: -90,
                  top: -90,
                  child: Container(
                    padding: const EdgeInsets.all(80),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 30,
                        color: AppStyles.circleColor
                      )
                    ),
                    
                  ),
                )
                  ],
                 ),
                 SizedBox(height: 30,), 
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: size.width*0.44,
                  height: 350,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEC6545),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text("Take Love", style: AppStyles.headLineStyle2.copyWith(color: Colors.white, fontSize: 30),),
                      //Image(image: AssetImage(AppMedia.emoji))
                      Image.asset('assets/images/emoji.png',width: 200,height: 250,)
                    ],
                  )
                 )


                ]
              ),



            ],
          );
  }
}