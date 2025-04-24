import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Restaurante(),));
}
class Restaurante extends StatelessWidget {
  const Restaurante({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold( 
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
         body: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("imagem/restaurant.png"),
            fit:BoxFit.cover),
            ),
          child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("PODE ENTRAR!!!", style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 101, 101, 101) ),),
          Text("0", style: TextStyle(fontSize: 100, color: const Color.fromARGB(255, 255, 255, 255) ),),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(onPressed:null , child: Text("Entrou"),
            style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize: Size(100, 100), 
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(24) ),
            ),
            ),
            SizedBox(width: 20,),
            TextButton(onPressed:null , child: Text("Saiu"),
            style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            fixedSize: Size(100, 100), 
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(24) ),
            ),
            ),
          ],),

          ],)
         )

    
      ),
    );
  }
}