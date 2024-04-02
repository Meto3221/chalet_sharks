import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Booking",style: TextStyle(
          color: Colors.white
        ),),
        centerTitle:true,
      ),
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          TextFormField(
              decoration: InputDecoration(
                labelText: "Cardholder's Name",
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Card Number',
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration:const InputDecoration(
                      labelText: "Expiry Date",
                    ),
                  ),
                ),
               const SizedBox(width: 20.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "CVV",
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child:Center(
              child:MaterialButton(
                color: Colors.blue,
                onPressed:(){
                },
                child:Text("pay",style: TextStyle(
                  color:Colors.white
                ),),
              ),
            ),
              )
          ]
        ))
    );
  }
}